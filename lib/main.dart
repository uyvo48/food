import 'package:eight/widget/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'screen/main2.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const MaterialApp(
        home: SafeArea(
          child: Scaffold(
            body: MyWidget2(),
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}

// backTwo
class MyWidget2 extends StatefulWidget {
  const MyWidget2();
  @override
  State<StatefulWidget> createState() {
    return OnboardingPageState();
  }
}

class OnboardingPageState extends State<MyWidget2> {
  OnboardingPageState();
  final controler = PageController();
  @override
  void dispose() {
    controler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          controller: controler,
          children: [
            //màn hình 1
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Align(
                    alignment: Alignment.topRight,
                    child: Text('skip'),
                  ),
                ),
                Stack(
                  children: [
                    Align(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: const Image(
                          image: AssetImage('assets/Asset2.png'),
                        ),
                      ),
                    ),
                    Align(
                      child: Container(
                        padding: const EdgeInsets.only(top: 90, left: 35),
                        alignment: Alignment.topLeft,
                        child: const Image(
                          image: AssetImage('assets/Asset4.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context)
                      .size
                      .width, // chiếm diện tích chiều rộng toàn màn hình
                  child: const Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40.0),
                        child: Text(
                          ' Yummy and fresh food',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Positioned(
                          right: 40,
                          child: Image(image: AssetImage('assets/icon1.png'))),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('You order has bene placed! youw will '),
                const Text('recieve an email receipt shortly'),
              ],
            ),
            //màn hình 2
            Container(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Align(
                      alignment: Alignment.topRight,
                      child: Text('skip'),
                    ),
                  ),
                  Stack(
                    children: [
                      Align(
                        child: Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(top: 20),
                          child: const Image(
                            image: AssetImage('assets/Asset3.png'),
                          ),
                        ),
                      ),
                      Align(
                        child: Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(top: 125, left: 35),
                          child: const Image(
                            image: AssetImage('assets/Asset5.png'),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Delivery is given on time',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Your order has been placed! You will\n'
                      'recieve an email receipt shortly'),
                ],
              ),
            ),
            //màn hình 3
            Container(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: ElevatedButton(
                        child: const Text(
                          'skip',
                          style: TextStyle(),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyWiget3()),
                          );
                        },
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Image(
                              image: AssetImage('assets/Asset6.png'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.only(bottom: 30),
        child: SmoothPageIndicator(controller: controler, count: 3),
      ),
    );
  }
}
