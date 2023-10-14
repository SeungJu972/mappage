import 'package:flutter/material.dart';

class Community4 extends StatefulWidget {
  const Community4({super.key});

  @override
  State<Community4> createState() => _Community4State();
}

class _Community4State extends State<Community4> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      //상단부분
      appBar: AppBar(
          leading:IconButton(//상단 좌측
             icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
             onPressed: (){
               Navigator.pop(context);
             },
             ),
        title:
              Expanded(child: Container(child: TextField(),)),                
        backgroundColor: Colors.white,  //상단 중앙
        actions: [], //상단 우측
        centerTitle: true,
        elevation: 1.0,
      ),
   body: ListView(children: [Container(child: Text("검색 기록"), height: 30, alignment: Alignment.centerLeft,decoration: BoxDecoration(border: Border.all( )),),
                             Expanded(child: Container(child: Text("여기부터 검색기록"), height: 30, alignment: Alignment.centerLeft,)),
                            ],
      )
//하단부분
   
    
    );
  }
}