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
              style: ButtonStyle(
                // Material State
                // 상태에 따른 스타일 적용
                // hovered - 호버링 상태 (마우스 커서를 올려놓은 상태)
                // focused - 포커스 됐을 때 (텍스트 필드)
                // pressed - 눌렸을 때
                // dragged - 드래그 됐을 때
                // selected - 선택 됐을 때 (체크박스, 라디오 버튼)
                // scrollUnder - 다른 컴포넌트 밑으로 스크롤링 됐을 때
                // disabled - 비활성화 됐을 때 (onPressed : null)
                // error - 에러상태
                // MaterialStateProperty.all - 모든 상태
                // MaterialStateProperty.resolveWith - 특정 상태
                backgroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.green;
                  }

                  return Colors.black;
                }),
                foregroundColor: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.white;
                    }

                    return Colors.red;
                  },
                ),
                padding: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return EdgeInsets.all(100);
                    }
                    return EdgeInsets.all(10);
                  },
                ),
              ),
              child: Text(
                'ButtonStyle',
              ),
            ),
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
                ),
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
              style: TextButton.styleFrom(
                // 글자 컬러
                primary: Colors.yellow,
                // 배경 컬러
                backgroundColor: Colors.blue,
              ),
              child: Text('TextButton'),
            ),
          ],
        ),
      ),
    );
  }
}
