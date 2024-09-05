import 'package:calendar_view/calendar_view.dart';
import 'package:go_router/go_router.dart';
import 'package:merge_date/pages/calendar_page.dart';
import 'package:merge_date/pages/create_event_page.dart';
import 'package:merge_date/pages/event_detail_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../utils/logger.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: "/home",
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: "/calendar",
        builder: (context, state) => const CalendarPage(),
      ),
      GoRoute(
        path: "/calendar/event_detail",
        builder: (context, state) {
          final event = state.extra as CalendarEventData;
          logger.d("event: $event");
          return DetailsPage(event: event);
        },
      ),
      GoRoute(
        path: "/calendar/create",
        builder: (context, state) => const CreateEventPage(),
      ),
    ],
  );
}
