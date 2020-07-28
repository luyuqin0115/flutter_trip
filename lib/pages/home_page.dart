import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttertrip/dao/home_dao.dart';
import 'package:fluttertrip/model/home_model.dart';
import 'package:fluttertrip/widget/grid_nav.dart';
import 'package:fluttertrip/widget/loading_container.dart';
import 'package:fluttertrip/widget/local_nav.dart';
import 'package:fluttertrip/widget/sales_box.dart';
import 'package:fluttertrip/widget/sub_nav.dart';
import 'package:fluttertrip/widget/webview.dart';

const APPBAR_SCROLL_OFFSET = 100;

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  double appBarAlpha = 0;
  List<LocalNav> localNavList = [];
  List<SubNav> subNavList = [];
  List<BannerModel> bannerList = [];
  GridNav gridNav;
  SalesBox salesBox;
  bool _loading = true; //页面加载状态
  _onScroll(offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSET;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    setState(() {
      appBarAlpha = alpha;
    });
    print(appBarAlpha);
  }

  Future<void> _handleRefreshData() async {
    try {
      HomeModel homeModel = await HomeDao.fetch();
      setState(() {
        localNavList = homeModel.localNavList;
        subNavList = homeModel.subNavList;
        bannerList = homeModel.bannerList;
        gridNav = homeModel.gridNav;
        salesBox = homeModel.salesBox;
        var resultString = json.encode(homeModel);
        print("loadData接口请求结果：$resultString");
        _loading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _handleRefreshData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Color(0xfff2f2f7),
      //Stack组建实现不同widget的叠加
      body: LoadingContainer(
        child: Stack(
          children: <Widget>[
            //移除ListView Padding
            MediaQuery.removePadding(
              //移除顶部留白
              removeTop: true,
              context: context,
              //滚动监听
              child: RefreshIndicator(
                child: NotificationListener(
                  // ignore: missing_return
                  onNotification: (scrollNotification) {
                    //第0个元素才滚动监听（外层）
                    if (scrollNotification is ScrollUpdateNotification &&
                        scrollNotification.depth == 0) {
                      _onScroll(scrollNotification.metrics.pixels);
                    }
                  },
                  child: _listView(),
                ),
                onRefresh: _handleRefreshData,
              ),
            ),
            //自定义AppBar渐变
            //改变透明度
            Opacity(
              opacity: appBarAlpha,
              child: Container(
                height: 80,
                decoration: BoxDecoration(color: Colors.white),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text('首页'),
                  ),
                ),
              ),
            ),
          ],
        ),
        isLoading: _loading,
      ),
    );
  }

  Widget _listView() {
    return ListView(
      children: <Widget>[
        Container(
          height: 160,
          //轮播图
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Swiper(
                  itemCount: bannerList.length,
                  autoplay: true,
                  onTap: (index) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WebView(
                                  url: bannerList[index].url,
                                )));
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      bannerList[index].icon,
                      fit: BoxFit.fill,
                    );
                  },
                  //轮播图指示器
                  pagination: SwiperPagination()),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(7, 4, 7, 4),
          child: LocalNavWidget(localNavList: localNavList),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(7, 0, 7, 4),
          child: GridNavWidget(homeDaoGridNav: gridNav),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(7, 0, 7, 4),
          child: SubNavWidget(subNavList: subNavList),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(7, 0, 7, 4),
          child: SalesBoxWidget(salesBox: salesBox),
        ),
        Container(
          height: 800,
          child: ListTile(
            title: Text("千與千尋"),
          ),
        )
      ],
    );
  }
}
