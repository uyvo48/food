import 'package:eight/screen/search_screen.dart';

import 'package:flutter/material.dart';

class widget5 extends StatefulWidget {
  const widget5();
  @override
  State<StatefulWidget> createState() {
    return man4();
  }
}

class man4 extends State<widget5> {
  final List<String> entries = <String>[
    'All',
    '🥞  Breakf',
    '🍹 Drin',
    '🍠 Snack'
  ];
  final List<String> seafood_icon = <String>[
    'assets/icon2.png',
    'assets/icon3.png',
  ];
  final List<String> textSeaFood = <String>[
    'Beef Steak\nchicken nugget',
    'Onagi sushi'
  ];
  final List<String> seafood_Price = <String>['\$ 35', '\$ 54'];
  int _selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 21),
                      child: Text(
                        'Hello',
                        style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Anasrasya    👋',
                        style: TextStyle(fontFamily: 'Rubik', fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image(
                      image: AssetImage('assets/Group 3.png'),
                      width: 45,
                      height: 45,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchScreen()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                  decoration: BoxDecoration(
                      color: Color(0xFFE6E6E8).withOpacity(0.3),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Image.asset("assets/icon_find.png"),
                      Text("Find your whereabouts  ")
                    ],
                  ),
                ),
              ),
            ),
            // ListView Header
            Container(
              height: 55,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: entries.length,
                itemBuilder: (BuildContext Context, int index) {
                  bool isSelected = _selectedIndex == index;
                  return Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: isSelected
                                ? const Color(0xFFFF9012).withOpacity(0.3)
                                : const Color(0xFFFF9012).withOpacity(0.1),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 25),
                            child: Text(
                              '${entries[index]}',
                              style: TextStyle(
                                color: isSelected
                                    ? const Color(0xFFF5F6F8)
                                    : const Color(0xFFFF9012),
                              ),
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
              height: 20,
            ),

            Stack(
              children: [
                Container(
                  height: 133,
                  width: 325,
                  decoration: BoxDecoration(
                      color: const Color(0xFF22BB9B).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(16)),
                  child: const Stack(
                    children: [
                      Image(
                        image: AssetImage(
                            'assets/brooke-lark-08bOYnH_r_E-unsplash-removebg-preview.png'),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Discount up to',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF22BB9B),
                              ),
                            ),
                            Text(
                              '50%',
                              style: TextStyle(
                                  fontSize: 36,
                                  color: Color(0xFF22BB9B),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'for the combo',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF22BB9B),
                              ),
                            ),
                            Text(
                              'package',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF22BB9B),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Seafood   🦐',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF181818),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: const Color(0xFF3B3B3B).withOpacity(0.5),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 230, // Chiều cao tổng thể của ListView
              child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: seafood_icon
                    .length, // Đảm bảo rằng bạn định nghĩa itemCount
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding:
                        const EdgeInsets.all(8.0), // Khoảng cách giữa các block
                    child: Container(
                      width: 160, // Chiều rộng của từng block
                      decoration: BoxDecoration(
                        color: Color(0xFFFF9012).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 108,
                              width: 108,
                              decoration: BoxDecoration(
                                color: Color(0xFFFF9012),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Image.asset(
                                seafood_icon[index],
                                height: 73,
                                width: 72,
                              ),
                            ),
                            Container(
                              height: 50,
                              child: Text(
                                textSeaFood[index],
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Rubik'),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    seafood_Price[index],
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/Group 9 Copy.png',
                                    height: 24,
                                    width: 24,
                                  )
                                ],
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
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/Path.png'),
                  Image.asset('assets/Shape.png'),
                  Image.asset('assets/Shape_1.png'),
                  Image.asset('assets/Shape_2.png'),
                  Image.asset('assets/Shape_3.png'),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
