import 'package:flutter/material.dart';
import 'package:oref/widgets/expandable_tile.dart';

class FractureMainPage extends StatelessWidget {
  final String name;

  FractureMainPage({Key key, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            ExpandableTile(),
          ],
        ),
      ),
    );
  }
}
