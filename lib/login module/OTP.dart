import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  TextEditingController Otpcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var textEditingController;
    return Scaffold(
    
      body: Column(children: [
        Center(
          child: Container(
            height: 150,
            width: 150,
            child: Image.asset("assets/images/m5.png"),
          ),
        ),
        const Text(
          "OTP verification",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          width: 250,
          child: Text(
            "Welcome back! Please enter your details",
            style: TextStyle(),
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
          ),
        ),
        PinCodeTextField(
          mainAxisAlignment: MainAxisAlignment.center,
          appContext: context,
          length: 4,
          obscureText: false,
          animationType: AnimationType.fade,
          pinTheme: PinTheme(
              fieldOuterPadding: EdgeInsets.all(15),
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 50,
              fieldWidth: 40,
              activeFillColor: Colors.white),
          controller: Otpcontroller,
          onCompleted: (v) {
            print("completed");
          },
        ),
        SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
              text: "Didn't receive a OTP?",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w200),
              children: <TextSpan>[TextSpan(text: "Resend OTP")]),
        ), ElevatedButton(onPressed: (){}, child: Text("Get OTP")),
         
      ]),
    );
  }
}
