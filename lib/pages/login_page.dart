import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue600,
        body: Column(
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  "Merge Date",
                  style: TextStyle(
                    fontSize: 48, // 큰 글씨 크기
                    fontWeight: FontWeight.bold, // 두껍게
                    color: Colors.white, // 원하는 색상
                    letterSpacing: 2.0, // 글자 간격 조정
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(18, 26, 18, 30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  children: [
                    const Text("환영합니다", style: titleLarge),
                    const Text(
                      "계정 시작하기",
                      style: bodyLarge,
                    ),
                    const SizedBox(height: 16),
                    FilledButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, "/signup");
                      },
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text("가입"))),

                    ),
                    const SizedBox(height: 16),
                    FilledButton(
                      onPressed: () {
                        context.go("/home");

                      },
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text("로그인"))),
                    ),
                    const SizedBox(height: 16),
                  ],
                ))
          ],
        ));
  }
}
