import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ui_practice_02/scrollview_practice.dart';

import 'navigation_bar_modern.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const NavigationBarModern(),
    );
  }
}

class ButtonPractice extends StatefulWidget {
  const ButtonPractice({super.key});

  @override
  State<ButtonPractice> createState() => _ButtonPracticeState();
}

class _ButtonPracticeState extends State<ButtonPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 232, 111, 59),
        title: const Text("Button Ui", style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 20
        ),),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 11,
            minimumSize: const Size(200, 50),
            backgroundColor: const Color.fromARGB(255, 232, 111, 59),
            side: const BorderSide(width: 2, color: Colors.black),
            textStyle: const TextStyle(
              //color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 22
            )
          ),
          child: const Text('Click'),
          onPressed: () => Fluttertoast.showToast(
              msg: "This is Center Short Toast",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          ),
        ),
      ),
    );
  }
}

