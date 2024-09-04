

import 'package:calendar_view/calendar_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'calendar_provider.g.dart';

@riverpod
EventController eventController(EventControllerRef ref) {
 return EventController();
}