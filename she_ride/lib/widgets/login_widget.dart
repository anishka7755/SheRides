import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:she_ride/utils/app_constants.dart';
import 'package:she_ride/views/otp_verification.dart';
import 'package:she_ride/widgets/text_widget.dart';

Widget loginWidget(CountryCode countryCode, Function onCountryChange) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget(
          text: AppConstants.helloNiceToMeetYou,
        ), // Greeting text
        const SizedBox(height: 8),
        textWidget(
          text: AppConstants.getMovingWithSheRide,
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ), // Main heading
        const SizedBox(height: 40), // Add space between widgets

        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
              )
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap:()=>onCountryChange(),
                  child: Container(
                    child: Row(
                      children: [
                        const SizedBox(width: 7,),
                        Expanded(child: Container(
                          child: countryCode.flagImage(),
                        )),
                  
                        textWidget(text: countryCode.dialCode),
                        const SizedBox(width: 10,),
                  
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 1,
                height: double.infinity,
                color: Colors.grey.withOpacity(0.2),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    onTap: (){
                      Get.to(()=>OtpVerificationScreen());
                    },
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.normal),
                      hintText: AppConstants.enterMobileNumber,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 40),

        Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 12),
              children: [
                TextSpan(
                  text: AppConstants.byCreating + "  ",
                ),
                TextSpan(
                  text: AppConstants.termsOfService + " ",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
                const TextSpan(
                  text: "and ",
                ),
                TextSpan(
                  text: AppConstants.privacyPolicy,
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
