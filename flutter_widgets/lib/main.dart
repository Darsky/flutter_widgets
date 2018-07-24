import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget cell(PageItem pageItem) {
    return new GestureDetector(
      onTap: ()=> didTouchOnCellItem(pageItem),
      child: new Container(
        height: 60.0,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(5.0),
        child: Text(
          pageItem.name,
          style: new TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  void didTouchOnCellItem(PageItem pageItem) {
    Navigator.pushNamed(context, '/${pageItem.pageName}');
  }

  List<Widget> pageList;

  @override
  Widget build(BuildContext context) {
    pageList = [
      cell(PageItem(name: 'Text',pageName: 'text_page')),
    ];
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
        appBar: new AppBar(
          title: new Text('Hi~'),
        ),
        body:  ListView(children: pageList,),
      ),
    );
  }
}

class PageItem {
  String name;
  String pageName;
  PageItem({this.name,this.pageName});
}


