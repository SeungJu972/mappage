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

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: GoogleMap(
          initialCameraPosition: initialPosition,
          mapType: MapType.normal,
        ),
      ),
    );
  }
}
