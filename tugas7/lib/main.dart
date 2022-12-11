import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:nivea/splashscreen.dart';
import 'package:nivea/databarang.dart';
import 'package:nivea/detail/barang.dart';
import 'data_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StokProvider(),
      builder: (context, child) {
        return child!;
      },
      child: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }

          if (snapshot.data!.getBool('Start') == null) {
            snapshot.data!.setBool('Start', false);
          }

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: snapshot.data!.getBool('Start') == true
                ? HomeScreen()
                : const Splash(),
          );
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Barang> listBarang = [
    Barang(
        name: 'Body Lotion',
        description:
            'Body lotion memberikan perawatan ringan untuk kebutuhan kulit sehatmu sehari-hari.'),
    Barang(
        name: 'Micellar Water',
        description:
            'pembersih wajah dengan teknologi Molekul Micelles yang dapat mengangkat makeup ringan maupun waterproof, kotoran, dan minyak di wajah seperti magnet.'),
    Barang(
        name: 'Facial Wash',
        description:
            'pembersih wajah yang tersedia dalam paket pencerah kulit yang alami.'),
    Barang(
        name: 'Care Lip Blam',
        description: 'membantu menjaga kelembapan bibir hingga 24 jam.'),
    Barang(
        name: 'Sun Protect & white oil control',
        description:
            'melindungi dari paparan sinar matahari untuk digunakan setiap hari.')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nivea Official Store'),
        backgroundColor: Color.fromARGB(255, 6, 32, 77),
      ),
      body: ListView.builder(
        itemCount: listBarang.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(listBarang[index].name),
            subtitle: Text('${listBarang[index].description}'),
            onTap: () {},
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () async {
                    await context
                        .read<StokProvider>()
                        .tambahBarang(listBarang[index]);
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const Stok();
              },
            ),
          );
        },
        child: const Icon(Icons.arrow_forward),
        backgroundColor: Color.fromARGB(255, 6, 32, 77),
      ),
    );
  }
}
