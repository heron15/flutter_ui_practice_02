import 'package:flutter/material.dart';

class CustomScrollViewPractice extends StatefulWidget {
  const CustomScrollViewPractice({super.key});

  @override
  State<CustomScrollViewPractice> createState() =>
      _CustomScrollViewPracticeState();
}

class _CustomScrollViewPracticeState extends State<CustomScrollViewPractice> {
  var listMulti = [];
  int count = 0;

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Scroll View'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 197, 110, 110),
              Color.fromARGB(255, 205, 49, 49),
            ]),
          ),
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 22,
        ),
        elevation: 10,
        actions: [
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                listMulti.add(count++);
              });
            },
          ),
        ],
      ),
      body: CustomScrollView(
        key: centerKey,
        slivers: <Widget>[
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  height: 150,
                  child: Text("Item: ${listMulti[index]}"),
                ),
              );
            }, childCount: listMulti.length),
          ),
        ],
      ),
    );
  }
}
