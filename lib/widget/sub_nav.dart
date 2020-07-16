import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertrip/model/home_model.dart';
import 'package:fluttertrip/widget/webview.dart';

class SubNavWidget extends StatelessWidget {
  //StatelessWidget组件不可变 所以要用final修饰
  final List<SubNav> subNavList;

  const SubNavWidget({
    Key key,
    @required this.subNavList,
  }) //name设置了默认值
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: EdgeInsets.all(7),
        child: _items(context),
      ),
    );
  }

  _items(BuildContext context) {
    if (subNavList == null) {
      return null;
    } else {
      List<Widget> items = [];
      for (var model in subNavList) {
        items.add(_item(context, model));
      }
      //计算出一行显示的数量
      int separate = (subNavList.length / 2 + 0.5).toInt();
      //spaceAround 平均排列
      return Column(
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: items.sublist(0, separate)),
          Padding(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: items.sublist(separate, subNavList.length)),
            padding: EdgeInsets.only(top: 10),
          )
        ],
      );
    }
  }

  Widget _item(BuildContext context, SubNav subNav) {
    //Expanded这个控件会把同级别的控件，在父控件中填充满整个父控件
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
//路由 页面跳转
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => WebView(
                        url: subNav.url,
                        title: subNav.title,
                        hideAppBar: subNav.hideAppBar,
                      )));
        },
        child: Column(
          children: <Widget>[
            Image.network(
              subNav.icon,
              width: 18,
              height: 18,
            ),
            Padding(
              child: Text(subNav.title, style: TextStyle(fontSize: 12)),
              padding: EdgeInsets.only(top: 3),
            )
          ],
        ),
      ),
    );
  }
}
