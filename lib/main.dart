import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/pages/home_page.dart';
import 'package:todo/util/constants.dart';

void main() async{
  // init hive flutter
  await Hive.initFlutter();

  // open a Box
  await Hive.openBox(TODOBOX);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        primaryColor: Colors.amber[300],
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

