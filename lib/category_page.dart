import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  final String name;

  CategoryPage({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
    );
  }
}
