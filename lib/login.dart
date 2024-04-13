import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/signup.dart';

class d extends StatefulWidget {
  const d({super.key});

  @override
  State<d> createState() => _dState();
}

class _dState extends State<d> {
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
                          Container(
                            width: 90,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                color: Colors.red),
                            child: Center(
                              child: Text(
                                "Login in",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => signup(),
                                  ));
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
                                  "Sign up",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.red),
                                ),
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
                          SizedBox(
                            height: 70,
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
                                "Login in",
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
