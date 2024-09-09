import 'package:flutter/material.dart';
import 'package:mini_whatsapp/components/custom_button.dart';
import 'package:mini_whatsapp/components/custom_textfiled.dart';
import 'package:mini_whatsapp/constants.dart';

class VerifiyPage extends StatefulWidget {
  const VerifiyPage({super.key});

  @override
  State<VerifiyPage> createState() => _VerifiyPageState();
}

class _VerifiyPageState extends State<VerifiyPage> {
    late TextEditingController codecontroller;

    @override
  void initState() {
     codecontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    codecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundcolor,
      appBar: AppBar(
        backgroundColor: kbackgroundcolor,
        title: Text("Verifying Your Number"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(
                child: Text(
              "We have sent an SMS with 01021453684",
              style: TextStyle(fontSize: 17),
            )),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110),
            child: CustomTextfiled(
              controller: codecontroller,
              hinttext: "-   -   -   -   -   -",     
            ),
          ),
           const Spacer(
            flex: 1,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: CusttomButton()
          )
        ],
      ),
    );
  }
}
