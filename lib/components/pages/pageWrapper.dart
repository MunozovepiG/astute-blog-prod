import 'package:astute_website/components/reusable/navigation/footer.dart';
import 'package:astute_website/components/reusable/navigation/menubar.dart';
import 'package:flutter/material.dart';

class PageWrapper extends StatelessWidget {
  final Widget child;

  PageWrapper({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Menu is fixed at the top
          Menu(),
          // SingleChildScrollView allows the content and footer to be scrollable
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Content (child) goes here
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    child: child,
                  ),
                  // Footer is part of the scrollable content
                  Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
