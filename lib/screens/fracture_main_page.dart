import 'package:flutter/material.dart';
import 'package:oref/widgets/expandable_tile.dart';
import 'package:oref/fractures_data/fractures_array.dart';
import 'package:oref/widgets/expandable_tile.dart';

class FractureMainPage extends StatelessWidget {
  final String name;

  FractureMainPage({Key key, @required this.name});

  @override
  Widget build(BuildContext context) {
    var matchedFracture = fractures_array.where((fracture) {
      return fracture;
    });
    print(matchedFracture);
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child:
            //     ListView.builder(
            //   itemBuilder: (context, index) {
            //     // final fracture = matched_fracture.sub_fracture[index];
            //     // return ExpandableTile(fracture: matched_fracture);
            //   },
            //   itemCount: fractures_array.length,
            // );
            Column(
          children: <Widget>[
            ExpandableTile(),
          ],
        ),
      ),
    );
  }
}
