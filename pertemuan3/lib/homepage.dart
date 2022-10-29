// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pertemuan3/pizza.dart';
import 'package:pertemuan3/pizza_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List foodType = [
    ['Fast Food', true],
    ['Heatlh Food', false],
  ];

  void foodTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < foodType.length; i++) {
        foodType[i][1] = false;
      }
      foodType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 900,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text('FIND', style: TextStyle(fontSize: 26)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text('YOUR BEST', style: TextStyle(fontSize: 26)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text('FOOD!', style: TextStyle(fontSize: 26)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black87,
                        ),
                        hintText: 'Search',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 231, 224, 224),
                            ),
                            borderRadius: BorderRadius.circular(100.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 231, 224, 224),
                            ),
                            borderRadius: BorderRadius.circular(100.0)),
                        filled: true,
                        fillColor: Color.fromARGB(255, 231, 224, 224),
                      ),
                    ),
                  ),
                  Container(
                      height: 50,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: foodType.length,
                          itemBuilder: ((context, index) {
                            return FoodType(
                                foodtype: foodType[index][0],
                                isSelected: foodType[index][1],
                                onTap: () {
                                  {
                                    foodTypeSelected(index);
                                  }
                                });
                          }))),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        food(
                            foodImagePath: 'img/pizza0.png',
                            foodName: 'meaty pizza with beef',
                            foodPrice: '6.3'),
                        food(
                          foodImagePath: 'img/burger1.png',
                          foodName: 'Burger with beef & egg',
                          foodPrice: '6',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
