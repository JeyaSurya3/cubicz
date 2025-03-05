import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Center(
        child: Container(
          height: 150,
          width: 150,
          child: Image.asset("assets/images/m5.png"),
        ),
      ),
      Text(
        "Regsiter",
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
            Text("Name"),
          ],
        ),
      ),
      TextFormField(
        decoration: InputDecoration(
            hintText: "Enter Your name",
            labelStyle: TextStyle(
              color: Color.fromARGB(255, 128, 105, 105),
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        keyboardType: TextInputType.name,
      ),
      SizedBox(
        height: 8,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Email"),
        ],
      ),
      TextFormField(
        decoration: InputDecoration(
          hintText: "Enter your e-mail",
          labelStyle: TextStyle(color: Color.fromARGB(255, 128, 105, 105)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Mobile Number"),
        ],
      ),
      TextFormField(
        decoration: InputDecoration(
          hintText: "Enter your mobile number",
          labelStyle: TextStyle(color: Color.fromARGB(255, 128, 105, 105)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        keyboardType: TextInputType.number,
        obscureText: true,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Password"),
        ],
      ),
      TextFormField(
        decoration: InputDecoration(
          hintText: "Enter your password",
          labelStyle: TextStyle(color: Color.fromARGB(255, 128, 105, 105)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        keyboardType: TextInputType.number,
        obscureText: true,
      ),SizedBox(height: 20,),
      InkWell(
        child: Container(
          child: Center(
              child: Text(
            "Create account",
            style: TextStyle(color: Colors.white),
          )),
          height: 40,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 28, 3, 97)),
        ),
      ),
      RichText(
        text: TextSpan(
          text: 'Already have an account? ',
          style: TextStyle(color: Colors.black),
          children: <TextSpan>[
            TextSpan(
                text: 'login',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue)),
          ],
        ),
      )
    ]));
  }
}
