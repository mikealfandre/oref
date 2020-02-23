import 'package:flutter/material.dart';
import './fracture_list_tile.dart';
// import '../category_names.dart';

class FracturesList extends StatelessWidget {
  FracturesList({@required this.fractures});

  final List<String> fractures;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final name = fractures[index];
        return FractureListTile(name);
      },
      itemCount: fractures.length,
    );
  }
}
