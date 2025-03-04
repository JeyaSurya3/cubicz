import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: 150,
              width: 150,
              child: Image.asset("assets/images/m5.png"),
            ),
          ),
          Text(
            "Login",
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 48,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Email"),
            ],
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Enter your e-mail",
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 128, 105, 105),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            keyboardType: TextInputType.emailAddress,
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
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Forget password?",
                style: TextStyle(
                    color: Color.fromARGB(255, 46, 39, 188),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),ElevatedButton(onPressed: (){}, child: Text("login"))
        ],
      ),
    );
  }
}
