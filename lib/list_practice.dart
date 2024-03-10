import 'package:flutter/material.dart';

class ListPractice extends StatefulWidget {
  const ListPractice({super.key});

  @override
  State<ListPractice> createState() => _ListPracticeState();
}

class _ListPracticeState extends State<ListPractice> {

  var arrName = ['Heron', 'Mehedi', 'Rabbi', 'Shawon', 'Munna', 'Asif', 'Rafin'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Practice'),
        backgroundColor: Colors.deepOrangeAccent,
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                color: Colors.yellow,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(arrName[index]),
                ),
              ),
            ),
          );
        },
        itemCount: arrName.length,
        /*children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                color: Colors.yellow,
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text('Hello - 01'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                color: Colors.yellow,
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text('Hello - 01'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                color: Colors.yellow,
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text('Hello - 01'),
                ),
              ),
            ),
          ),
        ],*/
      ),
    );
  }
}
