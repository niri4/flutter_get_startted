import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.deepPurple,
        child: Center(
          child: Text(
            sayHello(),
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.white, fontSize: 36.0),
          ),
        ));
    // TODO: implement build
    throw UnimplementedError();
  }

  String sayHello() {
    String hello;
    DateTime now = DateTime.now();
    int hour = now.hour;
    int minute = now.minute;
    if (hour < 12) {
      hello = 'Good Morning';
    } else if (hour < 18) {
      hello = 'Good Evening';
    } else {
      hello = 'Good Night';
    }
    String minutes =
        (minute < 10) ? ('0' + minute.toString()) : (minute.toString());
    return "It's Now " + hour.toString() + ':' + minutes + ". \n" + hello;
  }
}
