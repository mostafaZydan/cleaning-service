import 'package:cleaning_service/core/utils/app_colors.dart';
import 'package:cleaning_service/sections/authentication_section/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'third_onboarding_screen.dart';

class SecondOnboardingScreen extends StatelessWidget{
  const SecondOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 94,),
            Image.asset("assets/images/secondPageImage.png",
            height: 396,),
            const SizedBox(height: 18,),
            Text("Work Quality",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 30
            )),
            const SizedBox(height: 20,),
            Text("Quality performance is the degree to which a project deliverable to standards",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 16,
                color: AppColors.lightBlack
            )),
            const SizedBox(height: 19,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.black54
                  ),
                  height: 6,
                  width: 6,
                ),
                const SizedBox(width: 6,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.black
                  ),
                  height: 6,
                  width: 18,
                ),
                const SizedBox(width: 6,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.black54
                  ),
                  height: 6,
                  width: 6,
                ),
              ],
            ),
            const SizedBox(height: 29,),
            InkWell(
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ThirdOnboardingScreen(),));
            },
              borderRadius: BorderRadius.circular(10),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 28),
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black
                ),
                width: double.infinity,
                child: Text(
                  "Next",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                const Login(),));
              },
              child: Text(
                "Skip",
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                    color: AppColors.purple
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}