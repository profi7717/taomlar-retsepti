import 'package:flutter/material.dart';

class s extends StatefulWidget {
  const s({super.key});

  @override
  State<s> createState() => _sState();
}

class _sState extends State<s> {
  List nom1 = [
    ikki(text: "Taomlar1"),
    ikki(text: "Taomlar2"),
    ikki(text: "Taomlar3"),
    ikki(text: "Taomlar4"),
    ikki(text: "Taomlar3"),
    ikki(text: "Taomlar4"),
  ];
  Widget tamplate(s) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
      child: Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: const Color.fromARGB(255, 155, 35, 26),
                    offset: Offset(1, 2),
                    blurRadius: 10)
              ]),
          child: Center(
              child: Text(
            s.text,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            children: nom1.map((e) => tamplate(e)).toList()),
      ),
    );
  }
}

class ikki {
  String? rasm;
  String? text;
  ikki({this.rasm, this.text});
}
