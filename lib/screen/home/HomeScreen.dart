import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 배경과 테두리가 있는 버튼
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // 메인 컬러
                primary: Colors.red,
                // 글자 및 애니메이션 컬러
                onPrimary: Colors.black,
                // 그림자 컬러
                shadowColor: Colors.green,
                // 3D 입체감의 높이
                elevation: 10,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                // 여백
                padding: EdgeInsets.all(32),
                // 테두리
                side: BorderSide(
                  color: Colors.black,
                  width: 4,
                )
              ),
              child: Text(
                "ElevatedButton",
              ),
            ),
            // 테두리만 있는 버튼
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                // 글자와 애니메이션 컬러
                primary: Colors.green,
                // 배경 컬러
                backgroundColor: Colors.yellow,
                // 그림자 높이
                elevation: 10,
              ),
              child: Text(
                'OutlinedButton',
              ),
            ),
            // 글자만 있는 버튼
            TextButton(
              onPressed: () {},
              child: Text('TextButton'),
            ),
          ],
        ),
      ),
    );
  }
}
