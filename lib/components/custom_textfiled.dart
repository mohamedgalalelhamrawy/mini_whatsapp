import 'package:flutter/material.dart';
import 'package:mini_whatsapp/constants.dart';

class CustomTextfiled extends StatelessWidget {
  const CustomTextfiled(
      {super.key,
      this.ontap,
      this.hinttext,
      this.controller,
      this.keyboardType,
      this.suffix,
      this.prifix});
  final VoidCallback? ontap;
  final String? hinttext;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Widget? suffix;
  final Widget? prifix;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: ontap,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hinttext,
        suffix: suffix,
        prefix: prifix,

        border:const UnderlineInputBorder(
          borderSide: BorderSide(color: kprimarycolor,width: 2),
        ),
        enabledBorder:const UnderlineInputBorder(
          borderSide: BorderSide(color: kprimarycolor,width: 2),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kprimarycolor,width: 2),
        ) 
      ),
    );
  }
}
