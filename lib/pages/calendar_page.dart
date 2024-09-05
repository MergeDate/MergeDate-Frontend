import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: MonthView(
        initialMonth: DateTime.now(),
        onCellTap:(event, date){
          context.push('/calendar/create');
        },
        onEventTap: (event, date){
          context.push('/calendar/event_detail', extra: event);
        }
      ),
    );
  }
}
