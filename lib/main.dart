import 'package:flutter/material.dart';
import 'package:lunch_box/presentation/tabs/tabs_page.dart';

//email boxlunchcorp@gmail.com:lansing101
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lunch Box',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
