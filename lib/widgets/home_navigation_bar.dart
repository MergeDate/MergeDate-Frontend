
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
class HomeNavigationBar extends HookWidget{
  const HomeNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final index = useState(0);
    return BottomNavigationBar(
      currentIndex: index.value,
      onTap: (value) {
        if (index.value != value) {
          index.value = value;
          switch (value) {
            case 0:
              context.push("/home");
            case 1:
              context.push("/calendar");
            case 2:
              context.push("/chats");
            case 3:
              context.push("/personal");
          }
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.groups),
          label: "모임 목록",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: "캘린더",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: "채팅",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: "더 보기",
        ),
      ],
    );
  }
}
