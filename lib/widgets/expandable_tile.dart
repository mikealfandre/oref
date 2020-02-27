import 'package:flutter/material.dart';

class ExpandableTile extends StatefulWidget {
  @override
  _ExpandableTileState createState() => _ExpandableTileState();
}

class _ExpandableTileState extends State<ExpandableTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        border: Border.all(color: Colors.greenAccent, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      padding: EdgeInsets.all(5.0),
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
              color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600),
          key: Key("title"),
        ),
      ),
    );
  }
}
