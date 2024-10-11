import 'package:eight/screen/main4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widget4 extends StatefulWidget {
  const Widget4();
  @override
  State<StatefulWidget> createState() {
    return man3();
  }
}

class man3 extends State<Widget4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100),
              ),
              Align(
                child: Image.asset(
                  'assets/backOne.png',
                  width: 108,
                  height: 108,
                ),
              ),
              const SizedBox(height: 10),
              Align(
                child: Image.asset(
                  'assets/backTwo.png',
                  width: 160,
                  height: 37,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text('Login or sign up for free 😉'),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 325,
                height: 57,
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    labelText: 'PassWord',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 5)),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => widget5()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF22BB9B),
                    foregroundColor: Colors.white,
                    minimumSize: const Size(325, 57),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular((16)))),
                child: const Text('Continue'),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('Don’t have an account? Sing up'),
            ],
          ),
        ),
      ),
    );
  }
}
