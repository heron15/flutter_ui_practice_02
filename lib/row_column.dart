import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RowColumn extends StatefulWidget {
  const RowColumn({super.key});

  @override
  State<RowColumn> createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.green),
        title: const Text('Row Column'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        height: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text('A'),
            const Text('b'),
            const Text('c'),
            const Text('d'),
            const Text('e'),
            ElevatedButton(onPressed: () {}, child: const Text('click'))
          ],
        ),
      ),
    );
  }
}
