import 'package:flutter/material.dart';

class TravelPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _TravelPageState();
  }
}
class _TravelPageState extends State<TravelPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Center(
        child: Text('旅拍'),
      ),
    );
  }

}