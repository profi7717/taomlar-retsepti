import 'package:flutter/material.dart';

class retseptqushish extends StatefulWidget {
  const retseptqushish({super.key});

  @override
  State<retseptqushish> createState() => _retseptqushishState();
}

class _retseptqushishState extends State<retseptqushish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
      ),
      backgroundColor: Colors.red[100],
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Taom nomi",
                  labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ),
            Container(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Kategoriya",
                  labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ),
            Container(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Retsepti",
                  labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ),
            Container(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Tayyor bo'lish vaqti",
                  labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ),
            Container(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Rasm qo'shish",
                  labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ),
            Container(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Tayyorlash jarayoni",
                  labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    color: Colors.red[900]),
                child: Center(
                  child: Text(
                    "Saqlash",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
