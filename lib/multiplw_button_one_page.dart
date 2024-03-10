import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice_02/button_style01.dart';

import 'button_practice.dart';

class MultiButton extends StatefulWidget {
  const MultiButton({super.key});

  @override
  State<MultiButton> createState() => _MultiButtonState();
}

class _MultiButtonState extends State<MultiButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Multi Button"),
          backgroundColor: const Color.fromARGB(255, 20, 131, 150),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ButtonPractice()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(250, 50),
                      shape: StadiumBorder(),
                      elevation: 10,
                      backgroundColor: Color.fromARGB(255, 232, 111, 59),
                    ),
                    child: const Text("Button - 01")),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(250, 50),
                        shape: StadiumBorder(),
                        elevation: 10,
                        onPrimary: Colors.black87,
                        side: BorderSide(color: Colors.green, width: 2),
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        shadowColor: Colors.green),
                    child: const Text("Button - 02")),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(250, 50),
                      shape: StadiumBorder(),
                      side: BorderSide(color: Colors.black87, width: 2),
                      primary: Color.fromARGB(255, 197, 110, 110),
                      elevation: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.book,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Button - 03"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
