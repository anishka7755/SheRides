import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:she_ride/utils/colors.dart';
import 'package:she_ride/widgets/otp_verification_widget.dart';
import 'package:she_ride/widgets/greenintrowidget.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                greenIntroWidget(),
                Positioned(
                  top: 60,
                  left: 30,
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(202, 58, 25, 86),
                      ),
                      child: Icon(Icons.arrow_back, color: AppColors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            otpVerificationWidget(),
          ],
        ),
      ),
    );
  }
}