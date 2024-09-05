import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:merge_date/utils/logger.dart';

import '../utils/theme.dart';
import '../widgets/add_event_form.dart';



class CreateEventPage extends StatelessWidget {
  const CreateEventPage({super.key, this.event});

  final CalendarEventData? event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: black,
          ), onPressed: () {
          context.pop();
        },
        ),
        title: Text(
          event == null ? "Create New Event" : "Update Event",
          style: const TextStyle(
            color: black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: AddOrEditEventForm(
            onEventAdd: (newEvent) {
              if (event != null) {
                CalendarControllerProvider.of(context)
                    .controller
                    .update(event!, newEvent);
              } else {
                CalendarControllerProvider.of(context).controller.add(newEvent);
              }
              logger.d( CalendarControllerProvider.of(context).child);
              context.pop(true);
            },
            event: event,
          ),
        ),
      ),
    );
  }
}