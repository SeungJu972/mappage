import 'package:flutter/material.dart';

class Community2 extends StatefulWidget {
  const Community2({super.key});

  @override
  State<Community2> createState() => _Community2State();
}

class _Community2State extends State<Community2> {
  final List<String> items = List.generate(50, (index) => '항목 $index');
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
              Text("알림", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),                
        backgroundColor: Colors.white,  //상단 중앙
        actions: [], //상단 우측
        centerTitle: true,
        elevation: 1.0,
      ),
    body: ListView.separated(
          itemCount: 50,
          itemBuilder: (BuildContext ctx, int idx){
            
            return Container(
              height: 100.0,
              alignment: Alignment.center,
              child: Text('알림${idx}'),
            );
          }, 
          separatorBuilder: (BuildContext ctx, int idx){
            return Divider();
          },
           
           )

   
    
    );
  }
}