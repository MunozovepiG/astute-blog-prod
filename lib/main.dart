import 'package:astute_website/components/pages/pageWrapper.dart';
import 'package:astute_website/components/reusable/navigation/footer.dart';
import 'package:astute_website/components/reusable/navigation/menubar.dart';
import 'package:astute_website/pages/aboutpage.dart';
import 'package:astute_website/pages/contactpage.dart';
import 'package:astute_website/pages/homepage.dart';
import 'package:astute_website/pages/roadmappage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return PageWrapper(
          child: const HomePage(),
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'about',
          builder: (BuildContext context, GoRouterState state) {
            return PageWrapper(
              child: const About(),
            );
          },
        ),
        GoRoute(
          path: 'roadmap',
          builder: (BuildContext context, GoRouterState state) {
            return PageWrapper(
              child: const Roadmap(),
            );
          },
        ),
        GoRoute(
          path: 'contact_us',
          builder: (BuildContext context, GoRouterState state) {
            return PageWrapper(
              child: const ContactUs(),
            );
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
