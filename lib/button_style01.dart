import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button_practice.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Button Ui'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ButtonPractice()),
            );
          },
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              fixedSize: const Size(300, 50),
              textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              primary: Colors.yellow,
              onPrimary: Colors.black87,
              elevation: 15,
              shadowColor: Colors.yellow,
              side: const BorderSide(color: Colors.black87, width: 2),
              shape: const StadiumBorder()),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.connected_tv_sharp),
              SizedBox(width: 10),
              Text("Button - 01")
            ],
          ),
        ),
      ),
    );
  }
}
