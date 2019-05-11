import 'package:flutter/material.dart';
import 'category_list.dart';
import 'category_names.dart';

void main() => runApp(OrefApp());

class OrefApp extends StatefulWidget {
  @override
  _OrefAppState createState() => new _OrefAppState();
}

class _OrefAppState extends State<OrefApp> {
  TextEditingController editingController = TextEditingController(); //Need more explaining on this. Does this track and update every input change?

  var items = List<String>();
  

  @override
  void initState() {
    items.addAll(names);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> namesCopy = List<String>();
    namesCopy.addAll(names);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      namesCopy.forEach((item) {
        final char = item.toLowerCase();
        if (char.contains(query) || item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(names);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'WorkSans',
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold)
        )
      ),
      home: Scaffold(
      appBar: AppBar(title: Text('Oref')),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
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
            ),
            Expanded(child: CategoryList(items)),
          ],
        ),
      ),
    ));
  }
}
