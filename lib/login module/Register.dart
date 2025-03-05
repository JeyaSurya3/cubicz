import 'package:flutter/material.dart';

import 'OTP.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  int _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formkey,
      child: Column(children: [
        Center(
          child: Container(
            height: 150,
            width: 150,
            child: Image.asset("assets/images/m5.png"),
          ),
        ),
        Text(
          "Register",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          width: 250,
          child: Text(
            "Welcome back! Please enter your details",
            style: TextStyle(),
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Email"),
            ],
          ),
        ),
        TextFormField(
          validator: (value) {
            if (emailcontroller.text.isEmpty) {
              return "Empty field";
            } else {
              return null;
            }
          },
          controller: emailcontroller,
          decoration: InputDecoration(
              hintText: "Enter your e-mail",
              labelStyle: TextStyle(
                color: Color.fromARGB(255, 128, 105, 105),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Verification()));
              } else {
                print("failure");
              }
            },
            child: Text(
              "Get OTP",
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 1, 12, 55),
                fixedSize: Size(310, 45))),
        SizedBox(
          height: 20,
        ),
        Text(
          "Don’t have an account? Sign Up",
          style: TextStyle(fontWeight: FontWeight.w200),
        ),
        
      ]),
    ));
  }
}
