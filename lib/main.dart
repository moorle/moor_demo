import 'package:flutter/material.dart';

import 'app/data/database.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // var d = Database();
    // d.sectionsDao.

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: WeekWidget());
  }
}

class WeekWidget extends StatefulWidget {
  const WeekWidget({Key? key}) : super(key: key);

  @override
  _WeekWidgetState createState() => _WeekWidgetState();
}

class _WeekWidgetState extends State<WeekWidget> {
  var weeks = ["第一页", "第二页", "第三页"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.primaries[index],
            child: WeekContentWidget(),
          );
        },
        itemCount: weeks.length,
      ),
    );
  }
}

class WeekContentWidget extends StatelessWidget {
  const WeekContentWidget({Key? key}) : super(key: key);
  final height = 2000.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: height,
          child: CustomMultiChildLayout(
            delegate: MyMultiChildLayoutDelegate(),
            children: [
              LayoutId(
                child: Container(
                  color: Colors.blue,
                ),
                id: 1,
              ),
              LayoutId(
                child: Container(
                  color: Colors.pink,
                ),
                id: 2,
              ),
            ],
          ),
        ));
  }
}

class MyMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    layoutChild(1, BoxConstraints.tightFor(width: 200, height: 200));
    layoutChild(2, BoxConstraints.tightFor(width: 200, height: 200));

    positionChild(1, Offset(0, 200));
    positionChild(2, Offset(0, 1200));
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return false;
  }
}
