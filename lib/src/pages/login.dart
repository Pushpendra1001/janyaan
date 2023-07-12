
import 'package:janyaan/src/widgets/login_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class loginPage extends StatelessWidget {
  loginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

  var phoneSize = MediaQuery.of(context);
    return Center(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //  login icon
              SizedBox(
                height: phoneSize.size.width < 400 ? 300 : 450 ,
                child: Image.asset(
                  'assets/images/login.jpg',
                  fit: BoxFit.contain,
                  
                ),
              ),
              // const SizedBox(
              //   height: 30,
              // ),
              //  text message
              Text(
                "Welcome Back",
                style: GoogleFonts.aBeeZee(fontSize: 23),
              ),
              const SizedBox(
                height: 30,
              ),
              // email id
              login_field(
                controller: usernameController,
                hint_text: "Enter Username",
                labelText: "Username",
                obscuretext: false,
              ),
              const SizedBox(
                height: 15,
              ),
              //  password
              login_field(
                controller: passwordController,
                hint_text: "Enter Password",
                labelText: "Password",
                obscuretext: true,
              ),
              
              // forget password line
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Passoword ?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // login button
              ElevatedButton(
                onPressed: () {
                  print(phoneSize.size.width);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  fixedSize: const Size(340, 50),
                ),
                child: const Text("Sign in"),
              ),
              // divider line
              const SizedBox(
                height: 50,
              ),
              // Divider(
              //   color: Colors.grey.shade600,
              //   thickness: 0.5,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/google_img.png',
                      height: 56,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/facebook_img.png',
                      height: 56,
                    ),
                  ),
                ],
              ),
              
              Text(
                "Sign in with other Apps",
                style: GoogleFonts.aBeeZee(),
              ),
              //  sign in with other apps
            ],
          ),
        ),
      ),
    );
  }
}
