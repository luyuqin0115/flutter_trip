import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertrip/model/home_model.dart';
import 'package:fluttertrip/widget/webview.dart';

///网格卡片布局
class GridNavWidget extends StatelessWidget {
  //StatelessWidget组件不可变 所以要用final修饰
  final GridNav homeDaoGridNav;

  const GridNavWidget({
    Key key,
    @required this.homeDaoGridNav,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //PhysicalModel ，主要的功能就是设置widget四边圆角，可以设置阴影颜色，和z轴高度
    return PhysicalModel(
      color: Colors.transparent,
      //四角圆度半径
      borderRadius: BorderRadius.circular(6),
      //裁剪模式
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: _gridNavItems(context),
      ),
    );
  }

  _gridNavItems(BuildContext context) {
    List<Widget> items = [];
    if (homeDaoGridNav == null) {
      return items;
    }

    if (homeDaoGridNav.hotel != null) {
      items.add(_gridNavItem(context, homeDaoGridNav.hotel, true));
    }
    if (homeDaoGridNav.travel != null) {
      items.add(_gridNavItem(context, homeDaoGridNav.travel, false));
    }
    if (homeDaoGridNav.flight != null) {
      items.add(_gridNavItem(context, homeDaoGridNav.flight, false));
    }
    return items;
  }

  _gridNavItem(BuildContext context, GridNavItem gridNavItem, bool first) {
    List<Widget> items = [];
    items.add(_mainItem(context, gridNavItem.mainItem));
    items.add(_doubleItem(context, gridNavItem.item1, gridNavItem.item2));
    items.add(_doubleItem(context, gridNavItem.item3, gridNavItem.item4));
    List<Widget> expandItems = [];
    for (var value in items) {
      expandItems.add(Expanded(
        child: value,
        flex: 1,
      ));
    }
    Color startColor = Color(int.parse("0xff" + gridNavItem.startColor));
    Color endColor = Color(int.parse("0xff" + gridNavItem.endColor));
    return Container(
      height: 88,
      margin: first ? null : EdgeInsets.only(top: 3),
      //通过装饰器设置线性渐变
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [startColor, endColor])),
      child: Row(
        children: expandItems,
      ),
    );
  }

  _mainItem(BuildContext context, CommonModel model) {
    return _wrapGesture(
        context,
        Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Image.network(
              model.icon,
              fit: BoxFit.contain,
              height: 88,
              width: 121,
              //图片显示位置 居下
              alignment: AlignmentDirectional.bottomEnd,
            ),
            Container(
              margin: EdgeInsets.only(top: 11),
              child: Text(
                model.title,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            )
          ],
        ),
        model);
  }

  _doubleItem(
      BuildContext context, CommonModel topItem, CommonModel bottomItem) {
    return Column(
      children: <Widget>[
        Expanded(
          child: _item(context, topItem, true),
        ),
        Expanded(
          child: _item(context, bottomItem, false),
        )
      ],
    );
  }

  _item(BuildContext context, CommonModel item, bool first) {
    BorderSide borderSide = BorderSide(width: 0.8, color: Colors.white);
    return FractionallySizedBox(
      //撑满父布局的宽度
      widthFactor: 1,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
              left: borderSide, bottom: first ? borderSide : BorderSide.none),
        ),
        child: _wrapGesture(
            context,
            Center(
              child: Text(
                item.title,
                style: TextStyle(fontSize: 14, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            item),
      ),
    );
  }

  _wrapGesture(BuildContext context, Widget widget, CommonModel model) {
    return GestureDetector(
      onTap: () {
        //路由 页面跳转
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => WebView(
                      url: model.url,
                      statusBarColor: model.statusBarColor,
                      title: model.title,
                      hideAppBar: model.hideAppBar,
                    )));
      },
      child: widget,
    );
  }
}
