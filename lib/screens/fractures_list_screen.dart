import 'package:flutter/material.dart';
import 'package:oref/widgets/fractures_list.dart';
import 'package:oref/category_names.dart';
import 'package:oref/widgets/search_bar.dart';

class FracturesListScreen extends StatefulWidget {
  @override
  _FracturesListScreenState createState() => _FracturesListScreenState();
}

class _FracturesListScreenState extends State<FracturesListScreen> {
  // var fractures = List<String>();

  // @override
  // void initState() {
  //   fractures.addAll(names);
  //   super.initState();
  //   print(fractures);
  // }

  List<String> fractures = names;

  @override
  Widget build(BuildContext context) {
    // print(fractures);
    return Scaffold(
      appBar: AppBar(title: Text('Oref')),
      body: Container(
        child: Column(
          children: <Widget>[
            SearchBar(
                fractures: fractures,
                callback: (newFractureList) => {
                      setState(() => {fractures = newFractureList})
                    }),
            Expanded(child: FracturesList(fractures: fractures)),
          ],
        ),
      ),
    );
  }
}
