import 'package:flutter/material.dart';
import 'login_page.dart';
import 'kelompok_page.dart';
import 'aritmatika_page.dart';
import 'ganjil_genap_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        '/kelompok': (context) => KelompokPage(),
        '/aritmatika': (context) => AritmatikaPage(),
        '/ganjilgenap': (context) => GanjilGenapPage(),
      },
    );
  }
}
