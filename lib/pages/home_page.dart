import 'package:flutter/material.dart';
import 'package:merge_date/utils/theme.dart';

import '../widgets/home_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "회의",
          style: titleLarge.copyWith(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          homeButtonList(),
        ],
      ),
      bottomNavigationBar: const HomeNavigationBar(),
    );
  }
}

Widget homeButtonListTile(
    {required String title,
    required IconData icon,
    required Function() onTap}) {
  return ListTile(
    onTap: onTap,
    subtitle: Text(
      title,
      style: bodySmall.copyWith(color: gray800),
      textAlign: TextAlign.center,
      maxLines: 1,
    ),
    title: Container(
        width: 50,
        height: 50,
      padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: blue500,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Center( // 아이콘을 중앙에 배치
          child: Icon(icon, size: 24, color: Colors.white), // 아이콘 크기 조정
        ),),
  );
}

Widget homeButtonList() {
  final children = <Widget>[
    homeButtonListTile(
      title: "새 모임",
      icon: Icons.group_add,
      onTap: () {
        // Navigator.pushNamed(context, "/meeting");
      },
    ),
    homeButtonListTile(
      title: "참가",
      icon: Icons.add_box_rounded,
      onTap: () {
        // Navigator.pushNamed(context, "/chat");
      },
    ),
    homeButtonListTile(
      title: "캘린더",
      icon: Icons.today_rounded,
      onTap: () {
        // Navigator.pushNamed(context, "/calendar");
      },
    ),
    homeButtonListTile(
      title: "설정",
      icon: Icons.settings,
      onTap: () {
        // Navigator.pushNamed(context, "/setting");
      },
    ),
  ];
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: children.map((child) => Expanded(child: Center(child: child,))).toList(),
  );
}
