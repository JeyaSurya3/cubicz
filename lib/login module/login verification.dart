import 'package:cubicz/login%20module/Register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
String? validateEmail(String? value) {
  const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
      r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
      r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
      r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
      r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
      r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
      r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
  final regex = RegExp(pattern);

  return value!.isNotEmpty && !regex.hasMatch(value)
      ? 'Enter a valid email address'
      : null;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
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
                    validator: (val) => val!.isEmpty || !val.contains("@")
              ? "enter a valid eamil"
              : null,

              controller: emailcontroller,
              decoration: InputDecoration(
                  hintText: "Enter your e-mail",
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 128, 105, 105),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Password"),
              ],
            ),
            TextFormField(
              validator: (value) {
                if (passwordcontroller.text.isEmpty) {
                  return "Empty field";
                } else {
                  return null;
                }
              },
              controller: passwordcontroller,
              decoration: InputDecoration(
                hintText: "Enter your password",
                labelStyle:
                    TextStyle(color: Color.fromARGB(255, 128, 105, 105)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              keyboardType: TextInputType.number,
              obscureText: true,
            ),
            SizedBox(
              height: 6,
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
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  } else {
                    print("failure");
                  }
                },
                child: Text(
                  "login",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 1, 12, 55),
                    fixedSize: Size(400, 40))),
            SizedBox(
              height: 20,
            ),
            Text(
              "Don’t have an account? Sign Up",
              style: TextStyle(fontWeight: FontWeight.w200),
            )
          ],
        ),
      ),
    );
  }
}
