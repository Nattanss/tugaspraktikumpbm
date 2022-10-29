import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pertemuan3/pizza_desc';

class food extends StatelessWidget {
  final String foodImagePath;
  final String foodName;
  final String foodPrice;

  food({
    required this.foodImagePath,
    required this.foodName,
    required this.foodPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 150,
        height: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 231, 224, 224),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Center(
                    child: Image.asset(
                  foodImagePath,
                  width: 100,
                  height: 100,
                ))),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      foodName,
                      style: GoogleFonts.gfsDidot(
                        fontSize: 20,
                        color: Color.fromARGB(255, 5, 5, 5),
                      ),
                      maxLines: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          '\$' + foodPrice,
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Color.fromARGB(255, 10, 10, 10)),
                        ),
                      ),
                      InkWell(
                        child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 241, 48),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(Icons.add)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FoodDesc(
                                    foodImagePath: this.foodImagePath,
                                    foodName: this.foodName)),
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
