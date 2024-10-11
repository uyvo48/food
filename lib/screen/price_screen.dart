import 'dart:ui';
import 'package:eight/class/product.dart';
import 'package:eight/screen/search_screen.dart';
import 'package:eight/screen/order_details.dart';
import 'package:eight/widget/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PriceScreen extends StatefulWidget {
  final Product product;
  final int index;
  const PriceScreen({super.key, required this.product, required this.index});

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  @override
  Widget build(BuildContext context) {
    final listProduct = context.watch<CounterProvider>().listProduct;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 430,
                decoration: BoxDecoration(
                  color: const Color(0xffff9012).withOpacity(0.1),
                ),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 40),
                      child: Opacity(
                        opacity: 0.5,
                        child: Center(
                          child: ImageFiltered(
                            imageFilter:
                                ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                            child: SizedBox(
                              width: 150,
                              height: 150,
                              child: Image.asset(
                                'assets/icon/tom2.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Center(
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Image(
                          image: AssetImage(
                            'assets/icon/tom2.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 20,
                      right: 20,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SearchScreen(),
                                ),
                              );
                            },
                            child: Image.asset('assets/icon/comeBack.png'),
                          ),
                          Image.asset('assets/icon/icon_love.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/icon/Group 4.png'),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${widget.product.name}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Waroenk kita',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: const Color(0xFF181818).withOpacity(0.4),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      widget.product.description,
                      style: TextStyle(
                        color: const Color(0xFF181818).withOpacity(0.6),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Price',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF181818).withOpacity(0.3),
                              ),
                            ),
                            Text(
                              '\$${widget.product.price.toString()}',
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OrderDetails(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/Group 3.png',
                            height: 45,
                            width: 45,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            context
                                .read<CounterProvider>()
                                .decrease(widget.product);
                          },
                          child: Image.asset(
                            'assets/icon/img.png',
                            height: 48,
                            width: 48,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            widget.product.count.toString(),
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.read<CounterProvider>().add(widget.product);
                          },
                          child: Image.asset(
                            'assets/icon/img_1.png',
                            height: 48,
                            width: 48,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
