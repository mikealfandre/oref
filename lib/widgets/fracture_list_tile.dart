import 'package:flutter/material.dart';
import 'package:oref/screens/fracture_main_page.dart';
import '../category_page.dart';

class FractureListTile extends StatelessWidget {
  // List<String> items;
  final String fractureTitle;
  // FractureListTile(this.items, this.fractureTitle);
  FractureListTile(this.fractureTitle);

  @override
  Widget build(BuildContext context) {
    final icons = [
      Icons.directions_bike,
      Icons.directions_boat,
      Icons.directions_bus,
      Icons.directions_car,
      Icons.directions_railway,
      Icons.directions_run,
      Icons.directions_subway,
      Icons.directions_transit,
      Icons.directions_walk
    ];

    return Card(
      child: ListTile(
          leading: Icon(icons[5]),
          title: Text(
            fractureTitle,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FractureMainPage(name: fractureTitle)),
            );
          }),
    );
  }
}
