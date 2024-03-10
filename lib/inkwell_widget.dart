import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'button_practice.dart';

class InkWellPractice extends StatefulWidget {
  const InkWellPractice({super.key});

  @override
  State<InkWellPractice> createState() => _InkWellPracticeState();
}

class _InkWellPracticeState extends State<InkWellPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.indigo),
        title: const Text('InkWell On Tap'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ButtonPractice()),
              );
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
