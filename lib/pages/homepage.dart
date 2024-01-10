import 'package:astute_website/components/reusable/navigation/menubar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    bool isDesktop(BuildContext context) => screenWidth > 800;
    bool isTablet(BuildContext context) =>
        screenWidth > 600 && screenWidth <= 800;
    bool isMobile(BuildContext context) => screenWidth <= 600;

    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 1 - 72,
      color: Colors.orange,
      child: Center(
        child: Column(
          children: [
            Text('$screenWidth'),
            ElevatedButton(
              onPressed: () => context.go('/test'),
              child: const Text('Go to the Details screen'),
            ),
          ],
        ),
      ),
    );
  }
}
