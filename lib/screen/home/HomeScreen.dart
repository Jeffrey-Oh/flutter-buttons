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
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'OutlinedButton',
              ),
            ),
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
