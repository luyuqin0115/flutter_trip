import 'package:flutter/material.dart';
import 'package:fluttertrip/widget/search_bar.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _SearchPageState();
  }
}

class _SearchPageState extends State<SearchPage> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Center(
        child: SearchBar(
          hideLeft: false,
          defaultText: '测试测试',
          hint: '请输入',
          leftButtonClick: () {
            Navigator.pop(context);
          },
        ),
//      child: ListView.separated(
//        padding: const EdgeInsets.all(8),
//        itemCount: entries.length,
//        itemBuilder: (BuildContext context, int index) {
//          return Container(
//            height: 50,
//            color: Colors.amber[colorCodes[index]],
//            child: Center(child: Text('Entry ${entries[index]}')),
//          );
//        },
//        separatorBuilder: (BuildContext context, int index) =>
//        const Divider(),
//      ),
//        child: ListView.builder(
//            padding: const EdgeInsets.all(8),
//            itemCount: entries.length,
//            itemBuilder: (BuildContext context, int index) {
//              return Container(
//                height: 50,
//                color: Colors.amber[colorCodes[index]],
//                child: Center(child: Text('Entry ${entries[index]}')),
//              );
//            }
//        ),
      ),
    );
  }
}
