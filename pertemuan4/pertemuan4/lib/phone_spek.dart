import 'package:flutter/material.dart';
import 'package:pertemuan4/phone_desc.dart';

class PhoneSpek extends StatelessWidget {
  final String imgPath;
  final String PhoneName;
  final int ram;
  final int price;

  const PhoneSpek({
    super.key,
    required this.imgPath,
    required this.PhoneName,
    required this.ram,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(right: 50.0),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      elevation: 0,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PhoneDesc(
                  PhoneName: PhoneName,
                  imgPath: imgPath,
                  ram: ram,
                  price: price,
                ),
              ));
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
              scale: 2.0,
            ),
          ),
          width: 200.0,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        PhoneName,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 112, 83, 83),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
