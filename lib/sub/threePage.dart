import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../alarm.dart';
class ThreeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 80.0), // 오른쪽 간격 설정
                      child: ComboBoxExample(),
                    ),
                    IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {
                        // 설정 화면으로 이동하는 코드를 여기에 추가할 수 있습니다.
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => alarmApp(), // AlarmSettingsScreen은 설정 화면 위젯의 예시 이름입니다.
                          ),
                        );
                      },
                    ),
                  ],

                ),
                /*GoogleMapWidget(),*/
              ],
            ),
        ),
      ),
    );
  }
}

//이름을 넣는 콤보박스
class ComboBoxExample extends StatefulWidget {
  @override
  _ComboBoxExampleState createState() => _ComboBoxExampleState();
}

class _ComboBoxExampleState extends State<ComboBoxExample> {
  // 선택 이름 목록
  List<String> options = ['이름 1', '이름 2', '이름 3'];
  String? selectedOption; // 선택된 옵션

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DropdownButton<String>(
          value: selectedOption,
          items: options.map((String option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedOption = newValue;
            });
          },
        ),
        Text('선택된 옵션: $selectedOption'),
      ],
    );
  }
}

//구글지도
/*
class GoogleMapWidget extends StatefulWidget {
  @override
  _GoogleMapWidget createState() => _GoogleMapWidget();
}

class _GoogleMapWidget extends State<ComboBoxExample> {
  GoogleMapController? _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps Example'),
      ),
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          setState(() {
            _controller = controller;
          });
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194), // 초기 지도 위치 설정
          zoom: 14.0, // 초기 확대 수준 설정
        ),
      ),
    );
  }
}*/
