import 'package:flutter/material.dart';
import 'package:vetcareplus/home.dart';
import 'package:vetcareplus/register_page.dart';
import 'package:vetcareplus/forgot_password.dart';
import 'package:vetcareplus/components/my_button.dart';
import 'package:vetcareplus/components/my_textfield.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 49, 54),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 25),
            Image.asset(
              "image/vetcare+.png",
              height: 100,
              width: 400.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
                ),
              ),
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Log in',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'RobotoMono',
                        color: Color(0xfffbf8f8),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    MyTextField(hintText: "Email", obscureText: false),
                    const SizedBox(
                      height: 10,
                    ),
                    MyTextField(hintText: "Password", obscureText: true),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => forgotpassword()),
                            ),
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(color: Color(0xfffdfdfd)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyButton(
                      onTap: () => Navigator.push(
                          context, MaterialPageRoute(builder: (_) => home())),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "Dont hava an account?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.push(context,
                            MaterialPageRoute(builder: (_) => register())),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Color.fromARGB(255, 207, 162, 88)),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
