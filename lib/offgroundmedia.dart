import 'package:flutter/material.dart';
import 'package:offgroundmedia/feature/home_page.dart';
import 'package:offgroundmedia/utils/theme.dart';

class OffgroundMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: offgroundTheme,
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}
