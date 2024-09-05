import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:merge_date/providers/calendar_provider.dart';
import 'package:merge_date/providers/router_provider.dart';
import 'package:merge_date/utils/provider_observer.dart';
import 'package:merge_date/utils/theme.dart';

void main() {
  runApp(
    const ProviderScope(
      observers: [MainObserver()],
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    final eventController = ref.watch(eventControllerProvider); // eventsProvider 사용
    return CalendarControllerProvider(
      controller: eventController,
      child: MaterialApp.router(
        routerConfig: goRouter,
        theme: theme,
      ),
    );
  }
}
