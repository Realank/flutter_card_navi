import 'package:flutter/material.dart';
import 'CardNavigation/cardNavigation.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
        body: Center(
          child: new AnimateTabNavigation(
            sectionList: allSections,
          ),
        ),
      ),
    );
  }
}

const Color _mariner = const Color(0xFF3B5F8F);
const Color _mediumPurple = const Color(0xFF8266D4);
const Color _tomato = const Color(0xFFF95B57);
const Color _mySin = const Color(0xFFF3A646);

List<CardSection> allSections = <CardSection>[
  new CardSection(
      title: 'First Page',
      leftColor: _mediumPurple,
      rightColor: _mariner,
      contentWidget: Center(child: new Text('第一页'))),
  new CardSection(
      title: 'Second Page',
      leftColor: _mariner,
      rightColor: _mySin,
      contentWidget: Center(child: new Text('第二页'))),
  new CardSection(
      title: 'Third Page',
      leftColor: _mySin,
      rightColor: _tomato,
      contentWidget: Center(child: new Text('第三页'))),
  new CardSection(
      title: 'Forth Page',
      leftColor: _tomato,
      rightColor: Colors.blue,
      contentWidget: Center(child: new Text('第四页'))),
  new CardSection(
      title: 'Fifth Page',
      leftColor: Colors.blue,
      rightColor: _mediumPurple,
      contentWidget: Center(child: new Text('第五页'))),
];
