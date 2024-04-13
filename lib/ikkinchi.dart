import 'dart:math';

import 'package:flutter/material.dart';

class f extends StatefulWidget {
  const f({super.key});

  @override
  State<f> createState() => _fState();
}

class _fState extends State<f> {
  List nom = [
    bir(rasm: "image/uzbek food.jpg", text: 'Birinchi taomlar'),
    bir(rasm: "image/suyuq.jpg", text: 'Suyuq taomlar'),
    bir(rasm: "image/pitsa.jpg", text: 'Pitsalar'),
    bir(rasm: "image/salat.jpg", text: 'Salatlarlar'),
    bir(rasm: "image/dessert.jpg", text: 'Dessertlar'),
    bir(rasm: "image/shashlik.jpg", text: 'Shashliklar'),
    bir(rasm: "image/drinks.jpg", text: 'Ichimliklar'),
    bir(rasm: "image/osh.png", text: 'Osh'),
    bir(rasm: "image/uzbek food.jpg", text: 'Birinchi taomlar'),
  ];
  Widget tamplate(s) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.red[200],
              boxShadow: [
                BoxShadow(
                    color: const Color.fromARGB(255, 155, 35, 26),
                    offset: Offset(5, 7),
                    blurRadius: 10)
              ]),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(s.rasm),
                  radius: 35,
                ),
                Text(
                  s.text,
                  style: TextStyle(fontSize: 20),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Kategoriya...",
              style: TextStyle(color: Colors.white, fontFamily: 'text'),
            ),
            Icon(
              Icons.search,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(children: nom.map((e) => tamplate(e)).toList()),
        ),
      ),
    );
  }
}

class bir {
  String? rasm;
  String? text;
  bir({this.rasm, this.text});
}
