
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Welcome to WhatsApp",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
            Image.asset("assets/whatsapp logo.jpg"), 
            Column(children: [
              const Text('read our privacy. tap "Agree and continue" to accept the Terms of Service',textAlign: TextAlign.center,),
              const SizedBox(height: 20,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff028566),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Center(child: Text("Agree And Continue",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),)),
                ),
              )
            ],)
          ],
        ),
      ),
    );
  }
}