import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      alignment: Alignment.center,
      child: Text(
        title.toUpperCase(),
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
