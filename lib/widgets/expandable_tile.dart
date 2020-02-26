import 'package:flutter/material.dart';

class ExpandableTile extends StatefulWidget {
  @override
  _ExpandableTileState createState() => _ExpandableTileState();
}

class _ExpandableTileState extends State<ExpandableTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.greenAccent,
        child: ExpansionTile(
          backgroundColor: Colors.greenAccent,
          children: <Widget>[
            Container(
              color: Colors.purpleAccent,
              child: Column(
                children: <Widget>[
                  Text("Management: lorem ipsum"),
                  Text("How to set this fracture"),
                ],
              ),
            )
          ],
          title: Text(
            "A fracture",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w600),
            key: Key("title"),
          ),
        ));
  }
}
