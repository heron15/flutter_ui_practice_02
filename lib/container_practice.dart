import 'package:flutter/material.dart';

class ContainerPractice extends StatefulWidget {
  const ContainerPractice({super.key});

  @override
  State<ContainerPractice> createState() => _ContainerPracticeState();
}

class _ContainerPracticeState extends State<ContainerPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 238, 159, 127),
                Color.fromARGB(255, 232, 111, 59),
              ]
            ),
          ),
        ),
        elevation: 5,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        titleSpacing: 11,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Card(
            elevation: 10,
            child: Container(
              width: double.maxFinite,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [
                    Colors.purpleAccent.shade100,
                    Colors.deepPurple
                  ]
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

