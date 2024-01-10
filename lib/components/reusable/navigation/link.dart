import 'package:astute_website/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationItem extends StatefulWidget {
  final String text;
  final String route;

  NavigationItem({required this.text, required this.route});

  @override
  State<NavigationItem> createState() => _NavigationItemState();
}

class _NavigationItemState extends State<NavigationItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Container(
        child: Row(
          children: [
            InkWell(
              onTap: () => context.go(widget.route),
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  '${widget.text}', // Corrected string interpolation
                  style: isHovered
                      ? GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        )
                      : GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ), // Added the missing closing parenthesis here
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
