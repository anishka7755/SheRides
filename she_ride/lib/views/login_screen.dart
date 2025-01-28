import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:she_ride/widgets/login_widget.dart';
import '../widgets/greenintrowidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState(
  );
}

class _LoginScreenState extends State<LoginScreen> {
  final countryPicker = const  FlCountryCodePicker();
  CountryCode countryCode=CountryCode(name: 'India', code: 'IN', dialCode:'+91' );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: Get.height, // Ensures the scrollable content takes up the full height
            ),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  greenIntroWidget(),
                  loginWidget(countryCode,()async{
                     final picked= await countryPicker.showPicker(context: context);
        // Null check
        if (picked!= null) countryCode=picked;
        setState(() {
          
        });
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
