import 'package:flutter/material.dart';
import 'package:ndumiso_banda_module_3/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // app of the year
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mtn: App of the year',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const Login(),
    );
  }
}
