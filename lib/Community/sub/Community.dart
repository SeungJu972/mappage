import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //상단부분
      appBar: AppBar(
          leading:IconButton(//상단 좌측
             icon: Icon(Icons.close, color: Colors.black,),
             onPressed: (){
              print('Back Button is Cliked');
             },
             ),
        title:
              Text("게시판 글쓰기", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),                
        backgroundColor: Colors.white,  //상단 중앙
        actions: [], //상단 우측
        centerTitle: true,
        elevation: 1.0,
      ),
    body: Center(
                  child: Column(
                                children: [Container(height:60, alignment: Alignment.center, child: Text("게시글 태그 선택 부분")),
                                           Container(height:40, alignment: Alignment.center, child: Text("사진, 위치 버튼 부분")),
                                           Container(height:40, alignment: Alignment.center, child: Text("제목 입력 부분")),
                                           Expanded(child: Container(alignment: Alignment.center, child: Text("게시글 작성 부분"))),
                                          ],
                        ) ,
                ),
//하단부분
    bottomNavigationBar: 
      BottomAppBar(
        child: Container(
          height: 70,
          
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                          SizedBox(width:160,height: 45, child: ElevatedButton(onPressed: (){},child: Text("등록"),),),
                          SizedBox(width:160, height: 45, child: ElevatedButton(onPressed: (){},child: Text("취소"),),)
                        ],
            ),
        ),
      )
    
    );
  }
  
}