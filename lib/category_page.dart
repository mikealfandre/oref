import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'category_objects.dart';

class CategoryPage extends StatelessWidget {
  final String name;

  CategoryPage({Key key, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name),
        ),
        body: StreamBuilder(
            stream: Firestore.instance.collection('bones').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const Text('Loading...');
              return Column(
                children: <Widget>[
                  // Text(snapshot.data.documents[1]['name']),
                  Text(snapshot.data.documents[1]['amount'].toString()),
                  Text(info[0]["name"])
                ],
              );
            }));
  }
}
