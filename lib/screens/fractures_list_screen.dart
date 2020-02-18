import 'package:flutter/material.dart';
import '../widgets/fractures_list.dart';

class FracturesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Oref')),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: TextField(
                onChanged: (value) {
                  // filterSearchResults(value);
                },
                // controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(child: FracturesList()),
          ],
        ),
      ),
    );
  }
}
