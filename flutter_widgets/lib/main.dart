import 'package:flutter/material.dart';
import 'package:flutter_widgets/text_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new MainPage(), routes: <String, WidgetBuilder>{
      '/text_page': (BuildContext context) => new TextPage(),
    },);
  }
}

class MainPage extends StatefulWidget {
  @override
  createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget cell(PageItem pageItem) {
    return new GestureDetector(
      onTap: () => didTouchOnCellItem(pageItem),
      child: new Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 40.0,
                alignment: Alignment.center,
                child: Text(
                  pageItem.name,
                  style: new TextStyle(color: Colors.black),
                ),
              ),
              Divider(),
            ],
          )),
    );
  }

  void didTouchOnCellItem(PageItem pageItem) {
    Navigator.pushNamed(context, '/${pageItem.pageName}');
  }

  List<Widget> pageList;

  @override
  Widget build(BuildContext context) {
    pageList = [
      cell(PageItem(name: 'Text', pageName: 'text_page')),
    ];
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Hi~'),
      ),
      body: ListView(
        children: pageList,
      ),
    );
  }
}

class PageItem {
  String name;
  String pageName;
  PageItem({this.name, this.pageName});
}
