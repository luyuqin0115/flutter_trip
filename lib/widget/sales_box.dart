import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertrip/model/home_model.dart';
import 'package:fluttertrip/widget/webview.dart';

///底部卡片
class SalesBoxWidget extends StatelessWidget {
  //StatelessWidget组件不可变 所以要用final修饰
  final SalesBox salesBox;

  const SalesBoxWidget({
    Key key,
    @required this.salesBox,
  }) //name设置了默认值
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: _items(context),
    );
  }

  Widget _items(BuildContext context) {
    if (salesBox == null) {
      return null;
    } else {
      List<Widget> items = [];
      items.add(_doubleItem(
          context, salesBox.bigCard1, salesBox.bigCard2, true, false));
      items.add(_doubleItem(
          context, salesBox.smallCard1, salesBox.smallCard2, false, false));
      items.add(_doubleItem(
          context, salesBox.smallCard3, salesBox.smallCard4, false, true));

      //spaceAround 平均排列
      return Column(
        children: <Widget>[
          Container(
            height: 44,
            margin: EdgeInsets.only(left: 10),
            //spaceBetween 分布2端
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.network(
                  salesBox.icon,
                  height: 15,
                  fit: BoxFit.fill,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 1, 8, 1),
                  margin: EdgeInsets.only(right: 7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xffff4e63), Color(0xffff6cc9)])),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WebView(
                                  url: salesBox.moreUrl, title: '更多活动')));
                    },
                    child: Text(
                      '获取更多福利 >',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: items.sublist(0, 1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: items.sublist(1, 2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: items.sublist(2, 3),
          )
        ],
      );
    }
  }

  Widget _item(BuildContext context, CommonModel model, bool isBig, bool isLeft,
      bool isLast) {
    BorderSide borderSide = BorderSide(width: 0.8, color: Color(0xfff2f2f7));
    //Expanded这个控件会把同级别的控件，在父控件中填充满整个父控件
    return GestureDetector(
        onTap: () {
//路由 页面跳转
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => WebView(
                        url: model.url,
                        title: model.title,
                        hideAppBar: model.hideAppBar,
                      )));
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  right: isLeft ? borderSide : BorderSide.none,
                  bottom: isLast ? BorderSide.none : borderSide)),
          child: Image.network(
            model.icon,
            //MediaQuery 获取屏幕宽度
            width: MediaQuery.of(context).size.width / 2 - 10,
            height: isBig ? 129 : 80,
            fit: BoxFit.fill,
          ),
        ));
  }

  Widget _doubleItem(BuildContext context, CommonModel leftCard,
      CommonModel rightCard, bool isBig, bool isLast) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _item(context, leftCard, isBig, true, isLast),
        _item(context, rightCard, isBig, false, isLast)
      ],
    );
  }
}
