import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HoverImage extends StatefulWidget {
  const HoverImage({Key key, this.url, this.title}) : super(key: key);

  final String url;
  final String title;

  @override
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            widget.url,
            fit: BoxFit.cover,
          ),
          AnimatedOpacity(
            opacity: _hovering ? 1 : 0,
            duration: const Duration(milliseconds: 300),
            child: Center(
                child: Text(
              widget.title,
              style: Theme.of(context).textTheme.headline3,
            )),
          )
        ],
      ),
    );
  }

  void _mouseEnter(bool hover) => setState(() => _hovering = hover);
}
