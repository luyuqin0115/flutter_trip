import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertrip/model/home_model.dart';
import 'package:fluttertrip/widget/webview.dart';

class LocalNavWidget extends StatelessWidget {
  //StatelessWidget组件不可变 所以要用final修饰
  final List<LocalNav> localNavList;

  const LocalNavWidget({
    Key key,
    @required this.localNavList,
  }) //name设置了默认值
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Padding(
        padding: EdgeInsets.all(7),
        child: _items(context),
      ),
    );
  }

  _items(BuildContext context) {
    if (localNavList == null) {
      return null;
    } else {
      List<Widget> items = [];
      for (var model in localNavList) {
        items.add(_item(context, model));
      }
      //spaceAround 平均排列
      return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, children: items);
    }
  }

  Widget _item(BuildContext context, LocalNav localNav) {
    return GestureDetector(
      onTap: () {
//路由 页面跳转
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => WebView(
                      url: localNav.url,
                      statusBarColor: localNav.statusBarColor,
                      title: localNav.title,
                      hideAppBar: localNav.hideAppBar,
                    )));
      },
      child: Column(
        children: <Widget>[
          Image.network(
            localNav.icon,
            width: 32,
            height: 32,
          ),
          Text(localNav.title, style: TextStyle(fontSize: 12))
        ],
      ),
    );
  }
}
