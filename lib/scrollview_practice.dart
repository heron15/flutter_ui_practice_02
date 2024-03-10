import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_practice_02/color.dart';

import 'button_practice.dart';

class ScrollviewPractice extends StatefulWidget {
  const ScrollviewPractice({super.key});

  @override
  State<ScrollviewPractice> createState() => _ScrollviewPracticeState();
}

class _ScrollviewPracticeState extends State<ScrollviewPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: primaryColor),
        title: const Text('Scroll View'),
        backgroundColor: primaryColor,
        //leading: BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: double.maxFinite,
                  height: 150,
                  color: secondaryColor,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              width: 120,
                              height: double.maxFinite,
                              color: Colors.pink,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              width: 120,
                              height: double.maxFinite,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              width: 120,
                              height: double.maxFinite,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) => ButtonPractice(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          return SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(1.0, 0.5), // Adjust as needed
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: double.maxFinite,
                      height: 80,
                      color: secondaryColor,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 10),
                          Icon(
                            Icons.account_balance,
                            size: 35,
                            color: white,
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Item View - 01',
                            style: TextStyle(
                              fontFamily: 'bold',
                              fontSize: 20,
                              color: white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 25,
                            color: white,
                          ),
                          SizedBox(width: 10)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: double.maxFinite,
                    height: 80,
                    color: secondaryColor,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: double.maxFinite,
                    height: 80,
                    color: secondaryColor,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: double.maxFinite,
                    height: 80,
                    color: secondaryColor,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: double.maxFinite,
                    height: 80,
                    color: secondaryColor,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: double.maxFinite,
                    height: 80,
                    color: secondaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
