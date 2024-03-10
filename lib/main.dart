import 'package:flutter/material.dart';
import 'custom_scrollview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List',
      home: CustomScrollViewPractice(),
    );
  }
}
