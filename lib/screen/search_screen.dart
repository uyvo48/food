import 'dart:ui';

import 'package:eight/screen/price_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../class/product.dart';
import '../widget/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return SearchScreenState();
  }
}

class SearchScreenState extends State<SearchScreen> {
  final List<String> entries = <String>[
    'All',
    '🥞  Breakf',
    '🍹 Drin',
    '🍠 Snack'
  ];
  final List<String> image_Food = <String>[
    'assets/wesual-click-Hcdx1zVQJ6Y-unsplash.png',
    'assets/melissa-walker-horn-7QVsqKJapQg-unsplash.png'
  ];
  final List<String> text_Food = <String>[
    'Hot Tuna',
    'Fried Squid',
  ];
  final List<String> icon_Food = <String>[
    'assets/icon/icon_food1.png',
    'assets/icon/icon_food2.png',
    'assets/icon/icon_food3.png',
  ];
  final List<String> text_MenuFood = <String>[
    'Spacy fresh crab\nWaroenk kita',
    'Onagi sushi\nWaroenk kita',
    'Waroenk kita\nWaroenk kita',
  ];
  final List<Product> _listproduct = [
    Product('imageFood2', 'Onagi sushi', 54, '0', 0),
    Product(
        'imageFood3',
        'Shrimp',
        12,
        'Most whole Alaskan Red King Crabs get broken down into'
            'legs, claws, and lump meat. We offer all of these options as'
            'well in our online shop, but there is nothing like getting the'
            ' whole . . . .Most whole Alaskan Red King Crabs get broken'
            'down into legs, claws, and lump meat. We offer all of these'
            ' options as well in our online shop, but there is nothing like'
            ' getting the whole . . . .',
        0),
    Product('imageFood1', 'Spacy fresh crab', 35, '0', 0),
  ];

  @override
  Widget build(BuildContext context) {
    final productList = context.watch<CounterProvider>().listProduct;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 250,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: new Icon(
                            Icons.search,
                            color: const Color(0xFF3B3B3B).withOpacity(0.3),
                          ),
                          fillColor: const Color(0xFFE6E6E8).withOpacity(0.3),
                          filled: true,
                          hintText: 'Seafood',
                          hintStyle: TextStyle(
                            color: const Color(0xFF3B3B3B).withOpacity(0.3),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(16)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset('assets/icon_arrange.png',
                          width: 45, height: 45),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3, vertical: 4),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFFFF9012).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 4),
                                child: Text(
                                  '${entries[index]}',
                                  style:
                                      const TextStyle(color: Color(0xFFFF9012)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const Text(
                      'Recomended food',
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    const Spacer(),
                    Text(
                      'See all',
                      style: TextStyle(
                          color: const Color(0xFF3B3B3B).withOpacity(0.1),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          fontFamily: 'Rubik'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 250,
                  width: 379,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: image_Food.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Stack(
                              children: [
                                Image.asset(
                                  image_Food[index],
                                  fit: BoxFit.cover,
                                  height: 230,
                                  width: 175,
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0x00000000),
                                          Colors.black
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 20,
                                  top: 200,
                                  child: Text(
                                    text_Food[index],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      'People are looking for   🔥',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Rubik'),
                    ),
                    const Spacer(),
                    Text(
                      'See all',
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 12,
                          color: const Color(0xFF3B3B3B).withOpacity(0.5)),
                    ),
                  ],
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: icon_Food.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PriceScreen(
                                        product: productList[index],
                                        index: index,
                                      )));
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, right: 20),
                              child: Container(
                                height: 62,
                                width: 62,
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFFFF9012).withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Stack(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 5.0),
                                        child: ImageFiltered(
                                          imageFilter: ImageFilter.blur(
                                              sigmaX: 4, sigmaY: 4),
                                          child: Image.asset(
                                              '${productList[index].image}'),
                                        ),
                                      ),
                                    ),
                                    Center(
                                        child: Image.asset(
                                            '${productList[index].image}'))
                                  ],
                                ),
                              ),
                            ),
                            Text('${productList[index].name}'),
                            const Spacer(),
                            Image.asset(
                              'assets/icon/Group 9 Copy 4.png',
                              width: 50,
                              height: 50,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
