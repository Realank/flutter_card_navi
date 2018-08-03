import 'package:flutter/material.dart';
import 'CardNavigation/cardNavigation.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        body: Center(
          child: new AnimationDemoHome(
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
      title: 'EYEGLASSES',
      leftColor: _mediumPurple,
      rightColor: _mariner,
      contentWidget: Center(child: new Text('EYEGLASSES'))),
  new CardSection(
      title: 'SEATING',
      leftColor: _tomato,
      rightColor: _mediumPurple,
      contentWidget: Center(child: new Text('SEATING'))),
  new CardSection(
      title: 'DECORATION',
      leftColor: _mySin,
      rightColor: _tomato,
      contentWidget: new Text('DECORATION')),
  new CardSection(
      title: 'PROTECTION',
      leftColor: Colors.white,
      rightColor: _tomato,
      contentWidget: new Text('PROTECTION')),
  new CardSection(
      title: 'DECORATION',
      leftColor: _mySin,
      rightColor: _tomato,
      contentWidget: new Text('DECORATION')),
];
