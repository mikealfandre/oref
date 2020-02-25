import 'package:flutter/material.dart';
import 'package:oref/category_names.dart';

class SearchBar extends StatefulWidget {
  final List<String> fractures;
  final Function callback;
  SearchBar({this.fractures, this.callback});

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController editingController = TextEditingController();

  void newFilter(String query) {
    var filteredNames =
        names.where((name) => name.toLowerCase().contains(query.toLowerCase()));
    widget.callback(filteredNames);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(9.0),
      child: TextField(
        onChanged: (value) {
          newFilter(value);
        },
        controller: editingController,
        decoration: InputDecoration(
            labelText: "Search",
            hintText: "Search",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)))),
      ),
    ));
  }
}
