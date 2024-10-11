import 'package:flutter/material.dart';

class PaymentReorder extends StatefulWidget {
  const PaymentReorder({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PaymentReorderState();
  }
}

class _PaymentReorderState extends State<PaymentReorder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xffff9012),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                  size: 14,
                ),
              ),
              const Text(
                'Cashless',
                style: TextStyle(
                    color: Color(0xFF181818),
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          const Text(
            'Select your\n'
            'payment method',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Image.asset('assets/icon/img_2.png'),
              const SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(hintText: '234 9781 8465 ****'),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
