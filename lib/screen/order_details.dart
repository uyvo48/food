import 'dart:ui';

import 'package:eight/class/product.dart';
import 'package:eight/screen/payment_reorder.dart';
import 'package:eight/screen/search_screen.dart';
import 'package:eight/widget/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({
    super.key,
  });

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    final productList = context.watch<CounterProvider>().listProduct;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchScreen()),
                      );
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF9012),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  Text(
                    'Order details',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF181818).withOpacity(0.3),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(25),
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0x19ff9012),
                  border: Border.all(color: Color(0xFFFF9012), width: 2)),
              child: Text('Enjoy discount up to 50%           😉   '),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  final item = productList[index];
                  return item.count != 0
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10, left: 20),
                          child: Slidable(
                            key: Key('$item'),
                            endActionPane: ActionPane(
                                extentRatio: 0.2,
                                motion: const ScrollMotion(),
                                children: [
                                  SlidableAction(
                                    flex: 1,
                                    onPressed: (context) {},
                                    backgroundColor: Colors.red,
                                    icon: Icons.delete,
                                  )
                                ]),
                            child: Row(
                              children: [
                                Container(
                                  height: 62,
                                  width: 62,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffff9012)
                                        .withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Image.asset(item.image),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      item.name,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Waroenk kita',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: const Color(0xFF3B3B3B)
                                            .withOpacity(0.3),
                                      ),
                                    ),
                                    Text('\$${item.price.toString()}'),
                                  ],
                                ),
                                const SizedBox(
                                  width: 60,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context
                                        .read<CounterProvider>()
                                        .decrease(item);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF22BB9B)
                                          .withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: 30,
                                    width: 30,
                                    child: const Icon(
                                      Icons.remove_outlined,
                                      color: Color(0xFF22BB9B),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${item.count}',
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context.read<CounterProvider>().add(item);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF22BB9B),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: 30,
                                    width: 30,
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container();
                },
              ),
            ),

            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaymentReorder()),
                );
              },
              child: Container(
                height: 57,
                width: 325,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xff22bb9b),
                ),
                child: const Center(
                  child: Text(
                    'Check out',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              '-------------------------------------',
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
