import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    bool isDesktop(BuildContext context) => screenWidth > 800;
    bool isTablet(BuildContext context) =>
        screenWidth > 600 && screenWidth <= 800;
    bool isMobile(BuildContext context) => screenWidth <= 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            if (isDesktop(context))
              Container(
                child: Text('Desktop'),
              ),
            if (isTablet(context))
              Container(
                child: Text('Tablet'),
              ),
            if (isMobile(context))
              Container(
                child: Text('Mobile'),
              ),
            const Text(
              'Welcome to MyApp!',
              style: TextStyle(fontSize: 24.0),
            ),
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
