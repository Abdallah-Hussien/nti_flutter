import 'package:flutter/material.dart';
import 'package:nti_flutter/masar/utils/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.textColor,
    required this.onTap,
    this.backgroundColor = Colors.white,
  });
  final String text;
  final Color? textColor;
  final VoidCallback onTap;

  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 36,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    super.key,
    required this.hintText,
    this.prefixIcon,
    required this.suffixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    required this.controller,
    required this.validator,
  });

  final String hintText;
  final IconData? prefixIcon;
  final IconData suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String? Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 42,
      child: TextFormField(
        controller: controller,
        validator: validator,
        style: const TextStyle(color: Colors.grey),
        textDirection: TextDirection.rtl,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 10),
          prefixIcon: Icon(
            prefixIcon,
            color: AppColor.primaryBlue,
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: AppColor.primaryBlue,
          ),
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          filled: true,
          hintText: hintText,
          hintTextDirection: TextDirection.rtl,
          hintStyle: const TextStyle(color: Colors.grey),
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
