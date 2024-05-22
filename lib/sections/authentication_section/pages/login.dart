import 'package:cleaning_service/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _login createState() => _login();
}

class _login extends State<Login> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: ListView(
          children: [
            const SizedBox(height: 140,),
            Text("Your Logo",
                textAlign: TextAlign.center,
                style: GoogleFonts.pottaOne(fontSize: 40)),
            const SizedBox(height: 80,),
            providerWidget(),
            const SizedBox(height: 20,),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 170,
                  child: Divider(
                    height: 2,
                    color: Color(int.parse('0xFF486484')).withAlpha(20),
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("or",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.actor(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color:  Color(int.parse('0xFF486484')),
                      )
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1,color: AppColors.purple.withAlpha(20))
              ),
              child: Row(
               children: [
                 const SizedBox(width: 12,),
                 Text("+974",
                     textAlign: TextAlign.center,
                     style: GoogleFonts.rubik(fontSize: 20,
                       fontWeight: FontWeight.w300,
                       color:  Colors.black,
                     )
                 ),
                 const SizedBox(width: 12,),

                Container(
                  color: Colors.black,
                    width: 2,
                    height: 38,
                ),
                 const SizedBox(width: 12,),
                 Expanded(
                   child: TextField(
                     style: const TextStyle(
                         fontSize: 18
                     ),
                     decoration: InputDecoration(
                         hintText: "Enter Your Phone Number ",
                         hintStyle: GoogleFonts.rubik(
                             color: AppColors.hint,
                             fontWeight: FontWeight.w300,
                             fontSize: 16
                         ),
                         contentPadding: const EdgeInsets.symmetric(vertical: 12),
                         suffixIcon: Icon(Icons.check,color: AppColors.purple,size: 22,),
                       border: InputBorder.none
                     ),
                   ),
                 ),
               ],
              ),
            ),
            const SizedBox(height: 18,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1,color: AppColors.purple.withAlpha(20))
              ),
              child: Row(
               children: [
                 Expanded(
                   child: TextField(
                     obscureText: true,
                     obscuringCharacter:"•" ,
                     style: const TextStyle(
                       fontSize: 18,letterSpacing: 2
                     ),
                     decoration: InputDecoration(
                         hintText: "Password",
                         hintStyle: GoogleFonts.rubik(
                             color: AppColors.hint,
                             fontWeight: FontWeight.w300,
                             fontSize: 16
                         ),
                       contentPadding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                       suffixIcon: Icon(Icons.visibility_off,color: AppColors.purple,size: 22,),
                       border: InputBorder.none
                     ),
                   ),
                 ),
               ],
              ),
            ),
            const SizedBox(height: 44,),
            InkWell(
              onTap: (){

              },
              borderRadius: BorderRadius.circular(10),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black
                ),
                width: double.infinity,
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "Don't have an account?",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.darkBlue
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Text(
                    "REGISTER",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      letterSpacing: 2,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: AppColors.darkBlue
                    ),
                  ),
                  const SizedBox(width: 18,),
                  const Icon(Icons.arrow_forward,size: 22,color: Colors.black,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget providerWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.primary,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(10),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/googleLogo.png",width: 19,height: 19,),
                const SizedBox(width: 12,),
                Text("Google",style: GoogleFonts.rubik(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: AppColors.purple
                ),)
              ],
            ),
          ),
        ),
        const SizedBox(width: 12,),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.primary,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(10),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/appleLogo.png",width: 19,height: 19,),
                const SizedBox(width: 12,),
                Text("Apple ID",style: GoogleFonts.rubik(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: AppColors.purple
                ),)
              ],
            ),
          ),
        )
      ],
    );
  }

}