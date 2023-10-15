import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FirstApp extends StatefulWidget {
  const FirstApp({super.key});

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  //자기 위치
  static const LatLng companyLatlng = LatLng(
    37.489270,
    126.984610,
  );

  static const CameraPosition initialPosition = CameraPosition(
      target: companyLatlng, //위도와 경도값
      zoom: 15 //평균값
      );

  static const double distance = 100;
  //원의 반지를을 위한 변수

  //google map flutter에서 Circle 클래스 가져오기
  static Circle circle = Circle(
    circleId: const CircleId('circle'),
    //맵에 여러 동그라미가 있을때 식ㅂ려해주는 ID값
    center: companyLatlng,
    //중앙 : 내위치로 설정
    fillColor: Colors.blue.withOpacity(0.5),
    //원의 색 투명도 부여
    radius: distance,
    //반지름, 반경 m기준으로 값을 받게됨
    strokeWidth: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GoogleMap(
          initialCameraPosition: initialPosition,
          mapType: MapType.normal,
          circles: {circle},
        ),
      ),
    );
  }
}
