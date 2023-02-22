import 'dart:math';

import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController txtno= TextEditingController();
  String data ="";
  int d=0;
  int i=0;
  int a=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("$i"),
          Text("OTP Generator"),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: TextField(
              controller: txtno,
            ),
          ),
          SizedBox(height: 50),
             ElevatedButton(onPressed: (

                 ) {
               Random no =Random();
               d=int.parse(txtno.text);
               setState(() {
                 a= no.nextInt(999999999 - 100000000);
                 
               });
             }, child: Text("")),
             Container(
              height: 50,
              width: 200,
              color: Colors.grey,
               child: Center(child: Text("${(a==0) ? a : a.toString().substring(0,d)}",style: TextStyle(
                 letterSpacing: 15,
               ),),
            ),
             ),
          Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  a=0;
                });
              },
                child: Center(child: Text("Reset"))),
          )
        ],
      ),
    );
  }
}
