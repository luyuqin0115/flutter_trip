
import 'package:flutter/material.dart';

enum SearchBarType { home, normal, homeLight }

class SearchBar extends StatefulWidget {
  final String city;
  final bool enabled;
  final bool hideLeft;
  final bool autofocus;
  final SearchBarType searchBarType;
  final String hint; //默认提示文案
  final String defaultText;
  final void Function() leftButtonClick;
  final void Function() rightButtonClick;
  final void Function() speakClick;
  final void Function() inputBoxClick;

  const SearchBar({Key key,
    this.city,
    this.enabled = true,
    this.hideLeft,
    this.autofocus = false,
    this.searchBarType = SearchBarType.normal,
    this.hint,
    this.defaultText,
    this.leftButtonClick,
    this.rightButtonClick,
    this.speakClick,
    this.inputBoxClick})
      : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  bool showClear = false;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    if (widget.defaultText != null) {
      _controller.text = widget.defaultText;
    }
    super.initState();
  }

  ///输入框
  get _inputBox =>
      TextField(
        controller: _controller,
        style: TextStyle(color: Colors.blue),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          fillColor: Color(0xffa9a9a9),
          filled: true,
          hintText: widget.hint ?? '',
          hintStyle: TextStyle(fontSize: 15),
          prefixIcon: _wrapTap(
              Container(
                child: Container(
                  padding: EdgeInsets.fromLTRB(6, 5, 10, 5),
                  child: (widget?.hideLeft ?? false)
                      ? null
                      : Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey,
                    size: 26,
                  ),
                ),
              ),
              widget.leftButtonClick),
          suffixIcon: _wrapTap(
              Container(
                child: Container(
                  padding: EdgeInsets.fromLTRB(6, 5, 10, 5),
                  child: (widget?.hideLeft ?? false)
                      ? null
                      : Icon(
                    Icons.mic,
                    color: Colors.grey,
                    size: 26,
                  ),
                ),
              ),
              widget.rightButtonClick),),
      );

  get _getHomeSearch => null;

  get _getNormalSearch =>
      Container(
        child: Row(
          children: <Widget>[

            Expanded(
              flex: 1,
              child: _inputBox,
            )
          ],
        ),
      );

  Widget _wrapTap(Widget child, void Function() callback) {
    return GestureDetector(
      onTap: () {
        if (callback != null) callback();
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return widget.searchBarType == SearchBarType.normal
        ? _getNormalSearch
        : _getHomeSearch;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
}
