import 'package:flutter/material.dart';

class CategoryFlex extends StatelessWidget {
  const CategoryFlex({
    Key key,
    @required this.children,
    this.ratio = 1.0,
    this.minHeight = 300.0,
  }) : super(key: key);

  final List<Widget> children;
  final double ratio;
  final double minHeight;

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    final _isRow = _screenWidth >= (minHeight * ratio) * children.length;
    final _width = _isRow ? _screenWidth / children.length : _screenWidth;
    return Flex(
      direction: _isRow ? Axis.horizontal : Axis.vertical,
      children: children
          .map((c) => SizedBox(
                child: c,
                width: _width,
                height: _width / ratio,
              ))
          .toList(),
    );
  }
}
