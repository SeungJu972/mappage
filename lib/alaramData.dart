import 'package:flutter/material.dart';
import 'alarm.dart';
import 'alarmSetting.dart';
class alarmData extends StatelessWidget{
  @override
  bool isSwitched = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: IconButton(
                        icon: Image.asset(
                          "repo/images/back.png",
                          width: 20,
                          height: 20,
                        ),
                        onPressed: () {
                          // 설정 화면으로 이동하는 코드를 여기에 추가할 수 있습니다.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => alarmApp(),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "알림 및 소리",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 1, // 선의 높이를 조절하세요
                  color: Colors.grey, // 선의 색상을 원하는 색으로 설정하세요
                ),
                Row( //알림설정
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Image.asset(
                            "repo/images/alaram.png",
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(width: 12), // 이미지와 텍스트 사이의 간격을 설정하세요
                          Text(
                            "알람 설정",
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(
                            icon: Image.asset(
                              "repo/images/add.png",
                              width: 20,
                              height: 20,
                            ),
                            onPressed: () {
                              // 설정 화면으로 이동하는 코드를 여기에 추가할 수 있습니다.
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => alarmSetting(),
                                ),
                              );
                            },
                          ),
                        ],

                      ),


                    ),
                  ],
                ),
                Divider(
                  height: 1, // 선의 높이를 조절하세요
                  color: Colors.grey, // 선의 색상을 원하는 색으로 설정하세요
                ),
                Row( //알림설정
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.all(12),
                        child: TextButton(
                          onPressed: () {
                            // 설정 화면으로 이동하는 코드를 여기에 추가할 수 있습니다.
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => alarmApp(), // 초기화면으로 돌아갑니다.
                              ),
                            );
                          },
                          child: Text(
                            "알림 범위 지정",
                            style: TextStyle(fontSize: 20),
                          ),
                        )

                    ),
                  ],
                ),
                Row( //알림설정
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.all(12),
                        child: TextButton(
                          onPressed: () {
                            // 설정 화면으로 이동하는 코드를 여기에 추가할 수 있습니다.
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => alarmApp(), // 초기화면으로 돌아갑니다.
                              ),
                            );
                          },
                          child: Text(
                            "방해금지 시간설정",
                            style: TextStyle(fontSize: 20),
                          ),
                        )

                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Text("알림 on/off",style: TextStyle(fontSize: 20),),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          isSwitched ? '온' : '오프',
                          style: TextStyle(fontSize: 24),
                        ),
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            // 토글 버튼 상태를 변경하고 다시 그리도록 setState 호출

                          },
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Text("소리 on/off",style: TextStyle(fontSize: 20),),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          isSwitched ? '온' : '오프',
                          style: TextStyle(fontSize: 24),
                        ),
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            // 토글 버튼 상태를 변경하고 다시 그리도록 setState 호출

                          },
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Text("소리 on/off",style: TextStyle(fontSize: 20),),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          isSwitched ? '온' : '오프',
                          style: TextStyle(fontSize: 24),
                        ),
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            // 토글 버튼 상태를 변경하고 다시 그리도록 setState 호출

                          },
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  height: 1, // 선의 높이를 조절하세요
                  color: Colors.grey, // 선의 색상을 원하는 색으로 설정하세요
                ),
                Row( //알림설정
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.all(16),
                        child: TextButton(
                          onPressed: () {
                            // 설정 화면으로 이동하는 코드를 여기에 추가할 수 있습니다.
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => alarmApp(), // 초기화면으로 돌아갑니다.
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                "repo/images/pic.png",
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(width: 12), // 이미지와 텍스트 사이의 간격을 설정하세요
                              Text(
                                "계정/정보 관리",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        )

                    ),
                  ],
                ),
                Divider(
                  height: 1, // 선의 높이를 조절하세요
                  color: Colors.grey, // 선의 색상을 원하는 색으로 설정하세요
                ),
                Row( //알림설정
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.all(16),
                        child: TextButton(
                          onPressed: () {
                            // 설정 화면으로 이동하는 코드를 여기에 추가할 수 있습니다.
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => alarmApp(), // 초기화면으로 돌아갑니다.
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                "repo/images/alaram.png",
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(width: 8), // 이미지와 텍스트 사이의 간격을 설정하세요
                              Column(//접속중인 사용자 정보 받아오기
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "이승주",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "010-xxxx-xxxx",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )

                    ),
                  ],
                ),
                Divider(
                  height: 1, // 선의 높이를 조절하세요
                  color: Colors.grey, // 선의 색상을 원하는 색으로 설정하세요
                ),

              ],
            )
        ),
      ),
    );
  }
}