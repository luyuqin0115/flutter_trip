import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

const CATCH_URLS = ['m.ctrip.com/', 'm.ctrip.com/html5/', 'm.ctrip.com/html5'];

class WebView extends StatefulWidget {
  final String url;
  final String statusBarColor;
  final String title;
  final bool hideAppBar;
  final bool backForbid;

  const WebView({Key key,
    this.url,
    this.statusBarColor,
    this.title,
    this.hideAppBar,
    this.backForbid = false})
      : super(key: key);

  @override
  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  StreamSubscription<String> _onUrlChanged;
  StreamSubscription<WebViewStateChanged> _onStateChanged;
  StreamSubscription<WebViewHttpError> _onHttpError;
  bool exising = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    flutterWebviewPlugin.close();
    _onUrlChanged = flutterWebviewPlugin.onUrlChanged.listen((String url) {});
    _onStateChanged =
        flutterWebviewPlugin.onStateChanged.listen((WebViewStateChanged state) {
          switch (state.type) {
            case WebViewState.startLoad:
              if (_isToMain(state.url) && !exising) {
                if (widget.backForbid) {
                  //如果禁止返回则重新打开当前页面
                  flutterWebviewPlugin.launch(widget.url);
                } else {
                  //返回上一页
                  Navigator.pop(context);
                  exising = true;
                }
              }
              break;
            default:
              break;
          }
        });
    _onHttpError =
        flutterWebviewPlugin.onHttpError.listen((WebViewHttpError error) {
          print(error);
        });
  }

  // //判断url是否是首页
  bool _isToMain(String url) {
    bool contain = false;
    for (var value in CATCH_URLS) {
      //先判断url是否为空
      if (url?.endsWith(value) ?? false) {
        contain = true;
        break;
      }
    }
    return contain;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _onUrlChanged.cancel();
    _onStateChanged.cancel();
    _onHttpError.cancel();
    flutterWebviewPlugin.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String statusBarColorStr = widget.statusBarColor ?? 'ffffff';
    Color backButtonColor;
    if (statusBarColorStr == 'ffffff') {
      backButtonColor = Colors.black;
    } else {
      backButtonColor = Colors.white;
    }
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          _appBar(
              Color(int.parse('0xff' + statusBarColorStr)), backButtonColor),
          Expanded(
            child: WebviewScaffold(
              url: widget.url,
//              userAgent: 'null',
              //防止携程H5页面重定向到打开携程APP ctrip://wireless/xxx的网址
              withZoom: true,
              withLocalStorage: true,
              hidden: true,
//              enableAppScheme: true,
              initialChild: Container(
                color: Colors.white,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _appBar(Color backgroundColor, Color backButtonColor) {
    //如果第一个表达式为空，用第二个，如果第一个表达式不为空，用第一个
    if (widget.hideAppBar ?? false) {
      return Container(
        color: backgroundColor,
        height: 30,
      );
    }
    //FractionallySizedBox 撑满整个屏幕的宽度 widthFactor: 1
    return Container(
        color: backgroundColor,
        padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
        child: FractionallySizedBox(
          widthFactor: 1,
          child: Stack(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.close,
                    color: backButtonColor,
                    size: 26,
                  ),
                ),
              ),
              //Positioned 绝对定位
              Positioned(
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    widget.title ?? '',
                    style: TextStyle(color: backButtonColor, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
