import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageAdd extends StatefulWidget {
  const ImageAdd({super.key});

  @override
  State<ImageAdd> createState() => _ImageAddState();
}

class _ImageAddState extends State<ImageAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.indigoAccent),
        title: const Text('Image Practice'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/img01.png'),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/img02.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
