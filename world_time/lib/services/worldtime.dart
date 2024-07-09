import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // location name for the UI
  String flag; // url to an asset flag icon
  String url; //location url for api endpoint
  String time; // the time in that Location
  bool isDayTime; // true or false if daytime not active
  
  WorldTime ({ required this.location, required this.flag, required this.url}):time='',isDayTime=false;

  Future<void> getTime() async{

    try {
  Response response = await get(Uri.parse("https://worldtimeapi.org/api/timezone/$url"));
  Map data = jsonDecode(response.body);
  print(data);
  
  String datetime = data['datetime'];
  String offset = data['utc_offset'].substring(1,3);
  
  // print(datetime);
  // print(offset);
  
  
  
  // create DateTime object
  DateTime now = DateTime.parse(datetime);
  now = now.add(Duration(hours: int.parse(offset) ));
  print(now);
  
  // set the time property
  isDayTime = now.hour > 6 && now.hour < 20 ? true: false;
   time = DateFormat.jm().format(now);
} catch (e) {
  print("Error message: $e");
  time = 'Could not get time data';
}

 
    }

} 

