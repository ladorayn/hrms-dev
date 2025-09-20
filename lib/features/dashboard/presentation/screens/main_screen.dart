// features/dashboard/presentation/screens/main_screen.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _calculateSelectedIndex(context),
        onTap: (index) => _onItemTapped(index, context),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            activeIcon: Icon(Icons.people),
            label: 'Employees',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined),
            activeIcon: Icon(Icons.description),
            label: 'Leave Request',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox_outlined),
            activeIcon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  // Helper method to determine the current index based on the route
  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith(RoutePaths.dashboard)) {
      return 0;
    }
    if (location.startsWith(RoutePaths.employees)) {
      return 1;
    }
    if (location.startsWith(RoutePaths.leaveRequest)) {
      return 2;
    }
    if (location.startsWith(RoutePaths.inbox)) {
      return 3;
    }
    if (location.startsWith(RoutePaths.profile)) {
      return 4;
    }
    return 0; // Default to home
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go(RoutePaths.dashboard);
        break;
      case 1:
        context.go(RoutePaths.employees);
        break;
      case 2:
        context.go(RoutePaths.leaveRequest);
        break;
      case 3:
        context.go(RoutePaths.inbox);
        break;
      case 4:
        context.go(RoutePaths.profile);
        break;
    }
  }
}
