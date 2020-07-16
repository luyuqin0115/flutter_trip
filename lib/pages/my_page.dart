import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MyPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyPageState();
  }
}
class _MyPageState extends State<MyPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Center(
        child: Text('我的'),
      ),
    );
  }

}