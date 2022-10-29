import 'package:flutter/material.dart';
import 'package:pertemuan4/homepage.dart';

class PhoneDesc extends StatelessWidget {
  final String imgPath;
  final String PhoneName;
  final int ram;
  final int price;

  PhoneDesc({
    super.key,
    required this.imgPath,
    required this.PhoneName,
    required this.ram,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(115, 28, 28, 28),

      body: ListView(
        children: [
          Container(
            height: 700,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imgPath), fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(67, 0, 0, 0)),
                        //
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(
                              context,
                              const HomePage(),
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white70,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          color: const Color.fromARGB(65, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                PhoneName,
                                style: TextStyle(
                                    fontSize: 34,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 5, 5, 5)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Samsung Galaxy is Samsung Electronics' flagship line of Android smartphones and tablets. The original Samsung Galaxy smartphone debuted in 2009, and the line's first tablet, the Samsung Galaxy Tab, came out the following year.",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 3, 3, 3)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FittedBox(
                                          child: Text(
                                            'Price',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 12, 12, 12),
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        FittedBox(
                                          child: Text(
                                            '\$' '$price',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontSize: 18),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 62.4,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(9.6),
                                        color: Colors.white),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 28.8, right: 28.8),
                                        child: FittedBox(
                                          child: Text(
                                            'Buy Now >>',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
