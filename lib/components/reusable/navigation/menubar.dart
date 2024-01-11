import 'package:astute_website/components/reusable/navigation/link.dart';
import 'package:astute_website/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:astute_website/styles/breakpoints.dart';
import 'package:go_router/go_router.dart'; // Make sure you have this import with the breakpoints
import 'dart:html' as html; // Import the html library

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

  bool openMenu = false;
  bool isRouterOpen = false;

  Widget determineScreenType() {
    return Container(
      // height: 72,
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
                      AstuteLogo(),
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
          if (isTablet())
            Column(
              children: [
                Container(
                    // height: 72,
                    child: Padding(
                  padding: const EdgeInsets.only(left: 64, right: 64.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AstuteLogo(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                openMenu = !openMenu;
                              });
                            },
                            child: Icon(
                              openMenu ? Icons.close : Icons.menu,
                              size: 32,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      openMenu
                          ? Container(
                              width: double.infinity,
                              //color: Colors.blue,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      MobileNavigationItem(
                                          text: 'Home', route: '/'),
                                      MobileNavigationItem(
                                          text: 'About', route: '/about'),
                                      MobileNavigationItem(
                                          text: 'Roadmap', route: '/roadmap'),
                                      MobileNavigationItem(
                                          text: 'Contact us',
                                          route: '/contact_us'),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          : SizedBox(
                              height: 0,
                            )
                    ],
                  ),
                )),
              ],
            ),
          if (isMobile() || isSmallMobile())
            Column(
              children: [
                Container(
                    // height: 72,
                    child: Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AstuteLogo(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                openMenu = !openMenu;
                              });
                            },
                            child: Icon(
                              openMenu ? Icons.close : Icons.menu,
                              size: 32,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      openMenu
                          ? Container(
                              width: double.infinity,
                              //color: Colors.blue,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      MobileNavigationItem(
                                          text: 'Home', route: '/'),
                                      MobileNavigationItem(
                                          text: 'About', route: '/about'),
                                      MobileNavigationItem(
                                          text: 'Roadmap', route: '/roadmap'),
                                      MobileNavigationItem(
                                          text: 'Contact us',
                                          route: '/contact_us'),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          : SizedBox(
                              height: 0,
                            )
                    ],
                  ),
                )),
              ],
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return determineScreenType(); // Pass currentUri to the method
  }
}

class AstuteLogo extends StatelessWidget {
  const AstuteLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
