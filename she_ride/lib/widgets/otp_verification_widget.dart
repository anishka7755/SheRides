import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:she_ride/utils/app_constants.dart';
import 'package:she_ride/widgets/text_widget.dart';
import 'package:she_ride/widgets/pinput_widget.dart';

Widget otpVerificationWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget(
          text: AppConstants.phoneVerification,
        ),
        const SizedBox(height: 8),
        textWidget(
          text: AppConstants.enterotp,
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(height: 40),
        Center(child: const PinputWidget(length: 4)),
        const SizedBox(height: 40),
        Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 12),
              children: [
                TextSpan(
                  text: AppConstants.resendCode + "  ",
                ),
                TextSpan(
                  text: "10 seconds",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}