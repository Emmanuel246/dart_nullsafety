import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:logintuts/components/my_button.dart';
import 'package:logintuts/components/my_textfield.dart';
import 'package:logintuts/components/square_tile.dart';
import 'package:logintuts/services/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editiong controller
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final confirmpasswordController = TextEditingController();

  // sign user up method
  void signUserUp() async {
    // show loading circle
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
    // try creating the user

    try {
      // check if the pasword is confirmed
      if (passwordController.text == confirmpasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      } else {
        // show error message, passwords don't match
        showErrorMessae("Passwords doon't match!");
      }
            // pop the loading circle
    // ignore: use_build_context_synchronously
    Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
        // pop the loading circle
    // ignore: use_build_context_synchronously
    Navigator.pop(context);
      //show error message
      showErrorMessae(e.code);
    }

  
  }

  // error message to users
  void showErrorMessae (String message) {
    showDialog(context: context, builder:(context){
      return  AlertDialog(
        title: Text(message),
      );
    } );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // logo
                  const SizedBox(
                    height: 25,
                  ),
                    
                  const Icon(
                    Icons.lock,
                    size: 50,
                  ),
                    
                  const SizedBox(
                    height: 25,
                  ),
                    
                  // let's create an account for you!
                  Text(
                    "Let's create an accoun for you!",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // email textfield
                  MyTextfield(
                    controller: emailController,
                    hintText: "email",
                    obscureText: false,
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  //password textfield
                  MyTextfield(
                    controller: passwordController,
                    hintText: "password",
                    obscureText: true,
                  ),

                  const SizedBox(
                    height: 10
                  ),

                  //confirm password textfield
                  MyTextfield(
                    controller: confirmpasswordController,
                    hintText: "Confirm password",
                    obscureText: true,
                  ),
                    
               
                  const SizedBox(
                    height: 25,
                  ),
                    
                  // sign in button
                  MyButton(
                    onTap: signUserUp,
                    text: 'Sign Up',
                  ),
                    
                  const SizedBox(
                    height: 50,
                  ),
                  // or continue with
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Or continue with",
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                    
                  // google + apple sign in button
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //google button
                      SquareTile(imagePath: 'lib/images/google.png', onTap: () => AuthService().signInWithGoogle(),),
                    
                      SizedBox(
                        width: 25,
                      ),
                      // apple button
                      SquareTile(imagePath: 'lib/images/apple.png', onTap: () {},)
                    ],
                  ),
                    
                  const SizedBox(
                    height: 50,
                  ),
                    
                  // not a member? register now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          "Login now",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
  
  }
}
