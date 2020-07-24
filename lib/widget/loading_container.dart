import 'package:flutter/material.dart';

class LoadingContainer extends StatelessWidget {
  final bool isLoading;
  final bool cover;
  final Widget child;

  const LoadingContainer({Key key, @required this.isLoading, this.cover= false, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return !cover
        ? (!isLoading ? child : _loadingWidget())
        : Stack(
            children: <Widget>[child, isLoading ? _loadingWidget() : null],
          );
  }
}

Widget _loadingWidget() {
  return Center(
    child: CircularProgressIndicator(),
  );
}
