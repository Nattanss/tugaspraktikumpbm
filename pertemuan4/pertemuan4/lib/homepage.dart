import 'package:flutter/material.dart';
import 'package:pertemuan4/phone_spek.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 130, 206, 241),
        title: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                )),
          ],
        ),
      ),
      body: ListView(scrollDirection: Axis.vertical, children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to Nat Cell',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(30),
                  shadowColor: Colors.white,
                  child: TextField(
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: 'Search for your phone...',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DefaultTabController(
                  length: 3,
                  child: Column(children: [
                    TabBar(
                      isScrollable: true,
                      indicatorColor: Color.fromARGB(255, 212, 50, 0),
                      unselectedLabelColor: Color.fromARGB(255, 17, 17, 17),
                      labelColor: Color.fromARGB(255, 212, 50, 0),
                      labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      labelStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      tabs: const [
                        Tab(
                          text: 'SAMSUNG',
                        ),
                        Tab(
                          text: 'VIVO',
                        ),
                        Tab(
                          text: 'OPPO',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200.0,
                      child: TabBarView(children: [
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              PhoneSpek(
                                imgPath: 'images/samsung1.jpg',
                                PhoneName: 'Samsung Galaxy A52',
                                ram: 8,
                                price: 100,
                              ),
                              PhoneSpek(
                                imgPath: 'images/samsung2.jpg',
                                PhoneName: 'Samsung Galaxy A72',
                                ram: 8,
                                price: 120,
                              ),
                              PhoneSpek(
                                imgPath: 'images/samsung3.jpg',
                                PhoneName: 'Samsung Galaxy M22',
                                ram: 12,
                                price: 50,
                              ),
                              PhoneSpek(
                                imgPath: 'images/samsung4.jpg',
                                PhoneName: 'Samsung Galaxy A22',
                                ram: 4,
                                price: 150,
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ]),
                ),
              ]),
        ),
      ]),
    );
  }
}
