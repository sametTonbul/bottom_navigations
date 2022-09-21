import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page1.dart';
import 'package:flutter_application_1/Page2.dart';
import 'package:flutter_application_1/Page3.dart';

void main() {
  runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();}

class _MyHomePageState extends State<MyHomePage> {

  var myPageList = [Page1(),Page2(),Page3()];
  var selectedPageDataIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Bottom Navigations')),
      body: myPageList[selectedPageDataIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPageDataIndex,
        onTap: (value) => 
        setState(() {
          selectedPageDataIndex = value;}),
        iconSize: 30,
        selectedItemColor: Colors.black87,
        selectedFontSize: 18,
        unselectedItemColor: Colors.deepPurpleAccent,
        unselectedFontSize: 16,
        items: [
          BottomNavigationBarItem(
            label: 'Go Page1',
            icon: Icon(Icons.shield_moon)),
          BottomNavigationBarItem(
            label: 'Go Page2',
            icon: Icon(Icons.shield_rounded)),
          BottomNavigationBarItem(
            label: 'Go Page3',
            icon: Icon(Icons.shield_outlined)),
        ]
      ),
    );
  }
}
