import 'package:eight/screen/main3.dart';
import 'package:flutter/material.dart';

class MyWiget3 extends StatefulWidget {
  const MyWiget3();
  @override
  State<StatefulWidget> createState() {
    return man2();
  }
}

class man2 extends State<MyWiget3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 100)),
            Align(
              child: Center(
                child: Image.asset(
                  'assets/backOne.png',
                  width: 108,
                  height: 108,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              child: Center(
                child: Image.asset(
                  'assets/backTwo.png',
                  width: 160,
                  height: 37,
                ),
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            const Text('Login or sign up for free 😉 '),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 325,
                height: 57,
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Widget4()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF22BB9B),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(325, 57),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                ),
                child: const Text('Continue')),
            const SizedBox(
              height: 20,
            ),
            const Text('Don’t have an account? Sing up')
          ],
        ),
      ),
    );
  }
}
