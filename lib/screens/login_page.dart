import 'package:flutter/material.dart';
import 'package:mini_whatsapp/components/custom_textfiled.dart';
import 'package:mini_whatsapp/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController countryNamecontroler;
  late TextEditingController phoneNumbercontroler;

  @override
  void initState() {
    countryNamecontroler = TextEditingController(text: "egypt");
    phoneNumbercontroler = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    countryNamecontroler.dispose();
    phoneNumbercontroler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121A1D),
      appBar: AppBar(
        backgroundColor: const Color(0xff121A1D),
        title: const Text("Enter Your Phone Number"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
              child: Text("whatsApp will need to verify your phone number")),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: CustomTextfiled(
              controller: phoneNumbercontroler,
              ontap: () {},
              hinttext: "Phone Number",
              keyboardType: TextInputType.number,
            ),
          ),
         const  Spacer(flex: 1,)
         , Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: TextButton(
              onPressed: () {},
               child: Text("NEXT",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor:  kprimarycolor, // Background color
                padding: const EdgeInsets.symmetric(
                    vertical: 13, horizontal: 23), // Padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6), // Rounded corners
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
