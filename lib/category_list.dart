import 'package:flutter/material.dart';
import 'category_page.dart';

class CategoryList extends StatelessWidget {
  List<String> items;
  CategoryList(this.items);

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

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
              leading: Icon(icons[4]),
              title: Text(
                items[index],
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryPage(name: items[index])),
                );
              }
              ),
        );
      },
    );
  }
}
