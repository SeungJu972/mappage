import 'package:flutter/material.dart';
import 'package:mappage/Community/tab_commu.dart';
import 'sub/firstPage.dart';
import 'sub/secondPage.dart';
import 'sub/threePage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);

    controller!.addListener(() {//누를 경우 변경
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TabBar Example'),
        ),
        body: TabBarView(
          children: <Widget>[FirstApp(), Tabcommu(), ThreeApp()],
          controller: controller,
        ),
        bottomNavigationBar: TabBar(tabs: <Tab>[
          Tab( icon: Image.asset(
              controller!.index == 0
              ? "repo/images/home.png"
              : "repo/images/home_off.png"),) ,
          Tab( icon: Image.asset(
              controller!.index == 1
              ? "repo/images/community.png"
              : "repo/images/community_off.png"),) ,
          Tab( icon: Image.asset(
                  controller!.index == 2
                  ? "repo/images/map.png"
                  : "repo/images/map_off.png"),) ,
        ], controller: controller,
        )
    );
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
}