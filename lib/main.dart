import 'package:flutter/material.dart';
import 'category_list.dart';


void main() => runApp(OrefApp());

class OrefApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Oref')),
      body: CategoryList(),
    ));
  }
}
