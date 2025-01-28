import 'package:flutter/material.dart';
import 'package:get/get.dart';
Widget greenIntroWidget(){
  return Container(
    
width: Get.width,
decoration: BoxDecoration(
image:DecorationImage(image:AssetImage('assets/logo_random.png')) // add background for this video it is green
),
        height: Get.height*0.6,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
// add logo on this background
          ],
        )
  );
}