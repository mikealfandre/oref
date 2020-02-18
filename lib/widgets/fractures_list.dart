import 'package:flutter/material.dart';
import './fracture_list_tile.dart';
import '../category_names.dart';

class FracturesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final name = names[index];
        return FractureListTile(name);
      },
      itemCount: names.length,
    );
  }
}
