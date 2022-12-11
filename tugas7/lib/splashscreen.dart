import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:nivea/main.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 255, 255),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Color.fromARGB(255, 6, 32, 77),
              child: Text(
                'Nivea',
                style: TextStyle(fontSize: 40),
              ),
              foregroundColor: Color.fromARGB(255, 248, 249, 250),
            ),
            const SizedBox(height: 20),
            const Text(
              'Produced by Beiersdorf AG.',
              selectionColor: Color.fromARGB(255, 6, 32, 77),
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 200),
            Container(
              color: Color.fromARGB(255, 6, 32, 77),
              padding: const EdgeInsets.all(8.0),
              width: 100,
              child: ElevatedButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 6, 32, 77)),
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool('Start', true).then(
                    (value) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                  );
                },
                child: const Text(
                  'Start',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
