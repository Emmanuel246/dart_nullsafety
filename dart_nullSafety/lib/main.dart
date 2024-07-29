// variables by default are non-nullable -> cannot be null / must have a value
int x = 9;

// ? after a variable means it CAN be NULL 
int? y;

// ?? provides a fallback value in case the variable is null
String? nameFromDatabase = "Emma";
String nameInApp = nameFromDatabase ?? "Guest";

/* 

! after a variable means YOU are certain this variabl is NOT NULL
?. null aware operator -> used to access a property/method of an object

- if the object before ?. is not null, it will return like normal
- if the object before ?. is null, it will just return null

without the ?. operator, you will errors for using properties/method on null values
Simply, In other words...
?. helps you gracefully handle null values without your app crashing.

BEFORE NULL SAFETY
  IF (nameFromDatabase != null) {
  do safe code since we manually checked that it's not null
  }

WHEN TO USE ?. VS :
----------------------------------------------------------------------------------------------
Advantages of ?.

- Safety: Using ?. is safe when dealing with nullable objects.
          If the object is null, the expression will gracefully
          return null without throwing an error

-   Cleaner Code: It can simplify conditional checks.
                  Instead of using a longer condition
                  if (student != null) {
                  return student.name;
                  } else {
                  return null;
                  }
                  you can just say:
                  student?.name

-----------------------------------------------------------------------------------------------
- Explicitness: By using ! after a variable, you're explicitly stating that you
                expect the value to be non-null.
                If it does end up being null, the code will throw an error, which 
                can actually make debugging straightforward since the error will
                point directly to the line with !

PRATICAL EXAMPLE

- Imagine a school where students take an exam.
- The exam is out of 15.
- At the end of the year the school wants to print out the marks of every students.
- However, not all students took the exam.
*/


class Student {
  final String name; // every student has a name
  final int? score; //  score can be null because the student was absent for the exam

  Student({required this.name, this.score});
}

// methods to convert a score into a percentage
String scoreAsPercentage(int? score) {
    int totalMarks = 15;
    double percentage = (score?.toDouble() ?? 0) * 100 / totalMarks;

    return score == null ? "Absent" : '${percentage.toStringAsFixed(0)}%';
}

void main() {
  // print(x);
  List<Student> students = [
    Student(name: "Mitch", score: 7),
    Student(name: "Emmanuel", score: 15),
    Student(name: "Chidi"), // absent
    Student(name: "Quadri", score: 12),
    Student(name: "Nelson"),
    Student(name: "Odun") // absent
  ];

  // print the students marks
  for (var student in students) {
    print("${student.name}'s mark: ${scoreAsPercentage(student.score)}");
  }
}