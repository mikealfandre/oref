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

  void filterSearchResults(String query) {
    // var namesCopy = new List<String>.from(names);
    // namesCopy.addAll(widget.fractures);
    // namesCopy = new List<String>.from(numMoons.keys);
    print("namesCopy");
    // print(namesCopy);
    // print(namesCopy);
    if (query.isNotEmpty) {
      // List<String> dummyListData = List<String>();
      // namesCopy.forEach((item) {
      //   final char = item.toLowerCase();
      //   if (char.contains(query) || item.contains(query)) {
      //     dummyListData.add(item);
      //   }
      // });
      List<String> dummyListData = List<String>();
      names.forEach((item) {
        // final char = item.toLowerCase();
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      });
      // setState(() {
      //   // items.clear();
      //   // items.addAll(dummyListData);
      // });
      // return;
      widget.fractures.clear();
      widget.fractures.addAll(dummyListData);
      widget.callback(widget.fractures);
    } else {
      // setState(() {
      //   // items.clear();
      //   // items.addAll(names);
      // });
      widget.fractures.clear();
      widget.fractures.addAll(names);
      widget.callback(widget.fractures);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(9.0),
      child: TextField(
        onChanged: (value) {
          filterSearchResults(value);
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
