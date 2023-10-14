import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  EdgeInsetsGeometry padding = EdgeInsets.symmetric(horizontal: 16.0);
  EdgeInsetsGeometry padding2 = EdgeInsets.symmetric(horizontal: 5.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //상단부분
        appBar: AppBar(
          leading: IconButton(
            //상단 좌측
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "게시판 글쓰기",
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.white, //상단 중앙
          actions: [], //상단 우측
          centerTitle: true,
          elevation: 1.0,
        ),
        body: Center(
          child: Column(
            children: [
              InkWell(
                  onTap: () {},
                  child: Row(children: [
                    Expanded(
                      child: Container(
                        padding: padding,
                        height: 60,
                        alignment: Alignment.centerLeft,
                        child: Text("게시글의 주제를 선택해주세요. "),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color.fromRGBO(174, 174, 174, 1),
                                    width: 0.5))),
                      ),
                    ),
                    Container(
                      padding: padding,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromRGBO(174, 174, 174, 1),
                                  width: 0.5))),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ])),
              Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Container(
                        padding: padding2,
                        child: IconButton(
                          icon: Icon(Icons.image_outlined),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.location_on_outlined),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )),
              Container(
                  padding: padding,
                  height: 60,
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "제목을 입력하세요.",
                      hintStyle: TextStyle(fontSize: 18),
                      border: InputBorder.none, // 아래의 줄 숨김
                    ),
                  )),
              Expanded(
                  child: Container(
                    padding: padding,
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "게시글을 입력하세요.",
                      border: InputBorder.none, // 아래의 줄 숨김
                    ),
                  ))),
            ],
          ),
        ),
//하단부분
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 160,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("등록"),
                  ),
                ),
                SizedBox(
                  width: 160,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("취소"),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
