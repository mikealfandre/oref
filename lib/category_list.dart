import 'package:flutter/material.dart';
import 'category_names.dart';

class CategoryList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

      final titles = ['bike', 'boat', 'bus', 'car',
      'railway', 'run', 'subway', 'transit', 'walk'];

      final icons = [Icons.directions_bike, Icons.directions_boat,
      Icons.directions_bus, Icons.directions_car, Icons.directions_railway,
      Icons.directions_run, Icons.directions_subway, Icons.directions_transit,
      Icons.directions_walk];

      return ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Card( 
            child: ListTile(
              leading: Icon(icons[index]),
              title: Text(names[index]),
            ),
          );
        },
      );
    }
}
