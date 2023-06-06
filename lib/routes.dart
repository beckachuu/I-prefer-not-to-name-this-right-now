import 'package:flutter/material.dart';
import 'package:nicetry/features/inbox/presentation/screens/inbox_page.dart';
import 'package:nicetry/features/inbox/presentation/screens/main_page.dart';

import 'constants/const.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.home:
        return MaterialPageRoute(builder: (_) => const MainPage());

      case RoutePaths.inbox:
        return MaterialPageRoute(builder: (_) => const InboxPage());

      case RoutePaths.linkedIn:
        return MaterialPageRoute(builder: (_) => const InboxPage());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
