import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.subtitle,
    required this.obscureText,
  });
  final String title;
  final String subtitle;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.nunito(
            fontSize: 18,
            color: AppColor.textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          obscureText: obscureText,
          cursorHeight: 23,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            isCollapsed: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: AppColor.borderColor,
                width: 2,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: AppColor.borderColor,
                width: 2,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
          style: GoogleFonts.nunito(
            fontSize: 16,
            color: AppColor.textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
