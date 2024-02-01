import 'package:go_router/go_router.dart';
import 'package:habit_tracker/add_task_screen.dart';
import 'package:habit_tracker/home_page_screen.dart';

import 'package:intl/intl.dart';

DateTime now = DateTime.now();

String formatedDate = DateFormat.yMMMEd().format(now);
final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      name: 'Home',
      path: '/',
      builder: (context, state) => HomePage(title: formatedDate),
      routes: [
        GoRoute(
          name: 'AddTasks',
          path: 'AddTasks',
          builder: (context, state) => const AddTaskScreen(),
        ),
      ],
    ),
  ],
);
