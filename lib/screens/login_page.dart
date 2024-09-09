import 'dart:developer';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:mini_whatsapp/components/custom_button.dart';
import 'package:mini_whatsapp/components/custom_textfiled.dart';
import 'package:mini_whatsapp/constants.dart';
import 'package:mini_whatsapp/screens/verifiy_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController countryNamecontroler;
  late TextEditingController phoneNumbercontroler;

  ShowCountryNamePicker() {
    showCountryPicker(
        context: context,
        onSelect: (Country) {
          countryNamecontroler.text = Country.name;
        },
        countryListTheme: CountryListThemeData(
          bottomSheetHeight: 600,
          backgroundColor: kbackgroundcolor,
          flagSize: 22,
          borderRadius: BorderRadius.circular(20),
          inputDecoration: const InputDecoration(
            labelStyle: TextStyle(color: kprimarycolor),
            prefixIcon: Icon(
              Icons.language,
              color: kprimarycolor,
            ),
            hintText: "Search Country Name",
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
          ),
        ));
  }

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
      backgroundColor: kbackgroundcolor,
      appBar: AppBar(
        backgroundColor: kbackgroundcolor,
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
              readonly: true,
              suffix: const Icon(Icons.arrow_drop_down),
              controller: countryNamecontroler,
              ontap: ShowCountryNamePicker,
              hinttext: countryNamecontroler.text,
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(
            height: 20,
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
          const Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: CusttomButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VerifiyPage()),
                  );
                },
              ))
        ],
      ),
    );
  }
}
