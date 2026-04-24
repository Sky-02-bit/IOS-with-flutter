import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login_img.png", fit: BoxFit.cover),
            SizedBox(height: 20.0),
            Text(
              "Login Page",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32,
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(onPressed: () {
                    print("Successfully Entered to the App");
                  } ,
                  child: Text("Login"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
