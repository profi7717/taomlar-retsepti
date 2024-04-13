import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 1000,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "image/taom.jpg",
              ),
              fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Text(
                'Taomlar retsepti...',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontFamily: 'text',
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                width: 300,
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 90,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  color: Colors.white,
                                  border:
                                      Border.all(width: 1, color: Colors.red)),
                              child: Center(
                                child: Text(
                                  "Login in",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 90,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              color: Colors.red,
                            ),
                            child: Center(
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: "User name",
                                  labelStyle: TextStyle(
                                      fontSize: 15, color: Colors.grey)),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Phone number",
                                  labelStyle: TextStyle(
                                      fontSize: 15, color: Colors.grey)),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: 200,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                color: Colors.red),
                            child: Center(
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
