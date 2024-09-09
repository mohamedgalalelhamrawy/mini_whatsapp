 import 'package:flutter/material.dart';
import 'package:mini_whatsapp/constants.dart';

 class CusttomButton extends StatelessWidget {
   const CusttomButton({super.key, this.onPressed});

    final VoidCallback? onPressed;
   @override
   Widget build(BuildContext context) {
     return TextButton (
              onPressed: onPressed,
               child: Text(
                "NEXT",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.black),
              ),
              style: TextButton.styleFrom(
                backgroundColor: kprimarycolor, // Background color
                padding: const EdgeInsets.symmetric(
                    vertical: 13, horizontal: 23), // Padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6), // Rounded corners
                ),
              ),
            );
   }
 }