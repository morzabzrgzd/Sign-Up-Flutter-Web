import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_up_web/constant/app_color.dart';

import '../components/custom_text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 720,
          padding: const EdgeInsets.symmetric(horizontal: 170, vertical: 20),
          decoration: BoxDecoration(
            color: AppColor.bgColor,
            borderRadius: BorderRadius.circular(68),
            border: Border.all(
              color: AppColor.borderColor,
              width: 1.5,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Create Account',
                style: GoogleFonts.nunito(
                  fontSize: 38,
                  color: AppColor.textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Create a free salmanwap account to access\nall articles and videos.',
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  color: AppColor.textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 45),
              const CustomTextField(
                obscureText: false,
                title: 'Username',
                subtitle: 'Must not contain any special character',
              ),
              const SizedBox(height: 40),
              const CustomTextField(
                obscureText: true,
                title: 'Password',
                subtitle: 'Must have atleast 8+ characters',
              ),
              const SizedBox(height: 40),
              Stack(
                children: [
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColor.buttonBorderColor,
                    ),
                  ),
                  SizedBox(
                    height: 65,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.buttonColor,
                        elevation: 0,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Create a free account',
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
