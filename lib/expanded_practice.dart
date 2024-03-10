import 'package:flutter/material.dart';

class ExpandedExample extends StatefulWidget {
  const ExpandedExample({super.key});

  @override
  State<ExpandedExample> createState() => _ExpandedExampleState();
}

class _ExpandedExampleState extends State<ExpandedExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.greenAccent,
                Colors.green
              ]
            )
          ),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.grey,
              height: 70,
              width: 60,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.redAccent,
              height: 70,
              width: 60,
            ),
          ),
          Container(
            color: Colors.blueGrey,
            height: 70,
            width: 60,
          ),
        ],
      ),
    );
  }
}
