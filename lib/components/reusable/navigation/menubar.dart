import 'package:astute_website/components/reusable/navigation/link.dart';
import 'package:astute_website/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:astute_website/styles/breakpoints.dart';
import 'package:go_router/go_router.dart'; // Make sure you have this import with the breakpoints

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  bool isLargeDesktop() {
    return getScreenWidth(context) >= largeDesktopScreenWidth;
  }

  bool isDesktop() {
    double width = getScreenWidth(context);
    return width > tabletScreenWidth && width < largeDesktopContainer;
  }

  bool isTablet() {
    double width = getScreenWidth(context);
    return width > mobileScreenWidth && width <= tabletScreenWidth;
  }

  bool isMobile() {
    double width = getScreenWidth(context);
    return width > smallMobileScreenWidth && width <= mobileScreenWidth;
  }

  bool isSmallMobile() {
    double width = getScreenWidth(context);
    return width > 0 && width <= smallMobileScreenWidth;
  }

  Widget determineScreenType() {
    return Container(
      height: 72,
      //  color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (isLargeDesktop() || isDesktop())
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 64.0, right: 64),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Row(children: [
                          Container(
                            width: 68,
                            height: 68,
                            child: Image(
                              image: AssetImage('assets/astute_logo.png'),
                              fit: BoxFit
                                  .cover, // Optional: You can adjust this based on your needs
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          MonsFontRegular(text: 'astute', fontsize: 32)
                        ]),
                      ),
                      Container(
                        child: Row(children: [
                          NavigationItem(text: 'Home', route: '/'),
                          NavigationItem(text: 'About', route: '/about'),
                          NavigationItem(text: 'Roadmap', route: '/roadmap'),
                          NavigationItem(
                              text: 'Contact us', route: '/contact_us'),
                        ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          if (isTablet() || isMobile() || isSmallMobile())
            Column(
              children: [
                Text('Tablet'),
              ],
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return determineScreenType();
  }
}
