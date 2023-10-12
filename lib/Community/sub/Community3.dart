import 'package:flutter/material.dart';

class Community3 extends StatefulWidget {
  const Community3({super.key});

  @override
  State<Community3> createState() => _Community3State();
}

class _Community3State extends State<Community3> {
  
  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry padding = EdgeInsets.symmetric(horizontal: 16.0);
    return Scaffold(
      //상단부분
      appBar: AppBar(
          leading:IconButton(//상단 좌측
             icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
             onPressed: (){
              print('Back Button is Cliked');
             },
             ),
                        
        backgroundColor: Colors.white,  
        actions: [], //상단 우측
        centerTitle: true,
        elevation: 0.0,
      ),
    body:  Container(
      
      child: ListView(
                                  children: [Container(height:60, alignment: Alignment.centerLeft, child: Text("게시글 태그 부분"), padding: padding,),
                                             Container(height:80, alignment: Alignment.centerLeft, child: Text("사용자 프로필 부분"), padding: padding,),
                                             Container(height:40, alignment: Alignment.centerLeft, child: Text("게시글 제목 부분"),padding: padding,),
                                             SingleChildScrollView(child: Container(alignment: Alignment.topLeft, child: Text("게시글 길이만큼 늘어난다"*20),padding: padding,)),
                                              Container(
                                              height:40, 
                                              alignment: Alignment.centerLeft, 
                                              child: Text("이 밑으로는 댓글"),
                                              padding: padding,
                                               ),
                                            Expanded(child: Column(
                                                            children:[ Container(
                                                                        child: Text("댓글 댓글"),
                                                                        height:40,
                                                                        alignment: Alignment.centerLeft,
                                                                        padding: padding,
                                                                        ),
                                                                        Container(
                                                                        child: Text("댓글 댓글"),
                                                                        height:40,
                                                                        alignment: Alignment.centerLeft,
                                                                        padding: padding,
                                                                        ),
                                                                        Container(
                                                                        child: Text("댓글 댓글"),
                                                                        height:40,
                                                                        alignment: Alignment.centerLeft,
                                                                        padding: padding,
                                                                        ),Container(
                                                                        child: Text("댓글 댓글"),
                                                                        height:40,
                                                                        alignment: Alignment.centerLeft,
                                                                        padding: padding,
                                                                        ),Container(
                                                                        child: Text("댓글 댓글"),
                                                                        height:40,
                                                                        alignment: Alignment.centerLeft,
                                                                        padding: padding,
                                                                        ),Container(
                                                                        child: Text("댓글 댓글"),
                                                                        height:40,
                                                                        alignment: Alignment.centerLeft,
                                                                        padding: padding,
                                                                        ),Container(
                                                                        child: Text("댓글 댓글"),
                                                                        height:40,
                                                                        alignment: Alignment.centerLeft,
                                                                        padding: padding,
                                                                        ),Container(
                                                                        child: Text("댓글 댓글"),
                                                                        height:40,
                                                                        alignment: Alignment.centerLeft,
                                                                        padding: padding,
                                                                        ),Container(
                                                                        child: Text("댓글 댓글"),
                                                                        height:40,
                                                                        alignment: Alignment.centerLeft,
                                                                        padding: padding,
                                                                        ),Container(
                                                                        child: Text("댓글 댓글"),
                                                                        height:40,
                                                                        alignment: Alignment.centerLeft,
                                                                        padding: padding,
                                                                        ),Container(
                                                                        child: Text("댓글 댓글"),
                                                                        height:40,
                                                                        alignment: Alignment.centerLeft,
                                                                        padding: padding,
                                                                        ),Container(
                                                                        child: Text("댓글 댓글"),
                                                                        height:40,
                                                                        alignment: Alignment.centerLeft,
                                                                        padding: padding,
                                                                        ),
                                                                        
                                                                        
                                                                    ],
                                                            )
                                                    )
                                              
                                                                    
                                                                
                                            ],
                          ),
    ) ,
               
//하단부분
    bottomNavigationBar: 
      BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
          child: Row(
                
                children: [Container(child: IconButton(
                                            icon: Icon(Icons.image_outlined),
                                            onPressed:(){} ,
                                            ),
                                    ),
                          Container(child: IconButton(
                                            icon: Icon(Icons.location_on_outlined),
                                            onPressed:(){} ,
                                            ),
                                    ),
                  Expanded(child: Container(child: TextField())),
                  Container(child: IconButton(
                                            icon: Icon(Icons.send),
                                            onPressed:(){} ,
                                            ),
                                    ),
                ],
          ),
        )
      ),
    
    );
  }
}