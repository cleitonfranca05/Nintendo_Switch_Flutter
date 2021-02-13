import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(58, 63, 66, 1.0),
        child: ListView(
          //  mainAxisAlignment: MainAxisAlignment.center,
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 30, left: 20, right: 20, top: 30),
              child: Container(
                width: 350,
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(110.0),
                  child: Container(
                      width: 10, child: Image.asset('assets/images/logo.png')),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 181, 226, 1.0),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100))),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 300,
                      color: Color.fromRGBO(58, 63, 66, 1.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 10,
                            height: 60,
                            child: Column(
                              children: [
                                Container(
                                  height: 3,
                                ),
                                Icon(Icons.brightness_1,
                                    color: Color.fromRGBO(182, 235, 165, 1.0),
                                    size: 7.0),
                                Container(
                                  height: 7,
                                ),
                                Icon(Icons.brightness_1, size: 7.0),
                                Container(
                                  height: 7,
                                ),
                                Icon(Icons.brightness_1, size: 7.0),
                                Container(
                                  height: 7,
                                ),
                                Icon(Icons.brightness_1, size: 7.0),
                              ],
                            ),
                          ),
                          Container(
                              width: 70,
                              height: 90,
                              child: Image.asset('assets/images/minilogo.png')),
                          Container(
                            width: 10,
                            height: 60,
                            child: Column(
                              children: [
                                Container(
                                  height: 3,
                                ),
                                Icon(Icons.brightness_1, size: 7.0),
                                Container(
                                  height: 7,
                                ),
                                Icon(Icons.brightness_1, size: 7.0),
                                Container(
                                  height: 7,
                                ),
                                Icon(Icons.brightness_1, size: 7.0),
                                Container(
                                  height: 7,
                                ),
                                Icon(Icons.brightness_1, size: 7.0),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(216, 95, 83, 1.0),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(100))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.chanceTheme();
      },
    );
  }
}
