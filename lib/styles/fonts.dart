import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MonsFontRegular extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontsize;

  MonsFontRegular(this.text, {this.color, this.fontsize = 16});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: GoogleFonts.montserrat(
        fontSize: fontsize,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class RobotoBold extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontsize;

  RobotoBold(this.text, {this.color, this.fontsize = 16});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: GoogleFonts.roboto(
        fontSize: fontsize,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class RobotoSemiBold extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontsize;

  RobotoSemiBold(this.text, {this.color, this.fontsize = 16});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: GoogleFonts.roboto(
        fontSize: fontsize,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class RobotoRegular extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontsize;

  RobotoRegular(this.text, {this.color, this.fontsize = 16});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: GoogleFonts.roboto(
        fontSize: fontsize,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
