import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:offgroundmedia/widget/category_flex.dart';
import 'package:offgroundmedia/widget/header.dart';
import 'package:offgroundmedia/widget/hover_image.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/Icon-512.png'),
        title: const Text('Offground Media'),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(viewportFraction: 1.0, disableCenter: true, autoPlay: true),
            items: imgList.map((i) => Image.network(i, fit: BoxFit.cover)).toList(),
          ),
          const Header(title: 'Photography'),
          CategoryFlex(
            children: [
              HoverImage(title: 'People', url: imgList[0]),
              HoverImage(title: 'Nature', url: imgList[1]),
              HoverImage(title: 'Commercial', url: imgList[2]),
            ],
          ),
          const Header(title: 'Videography'),
          CategoryFlex(
            ratio: 16/9,
            minHeight: 360,
            children: [
              Container(color: Colors.yellow),
              Container(color: Colors.purple),
            ],
          ),
          const Header(title: 'About'),
        ],
      ),
    );
  }
}

///dummy Data
final List<String> imgList = [
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1920&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1920&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1920&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1920&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1920&q=80',
];
