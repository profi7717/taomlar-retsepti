import 'package:flutter/material.dart';
import 'package:flutter_application_1/ikkinchi.dart';
import 'package:flutter_application_1/retsept%20qushish.dart';

class b extends StatefulWidget {
  const b({super.key});

  @override
  State<b> createState() => _bState();
}

class _bState extends State<b> {
  List nom1 = [
    ikki(
      text: "Taomlar1",
    ),
    ikki(text: "Taomlar2"),
    ikki(text: "Taomlar3"),
    ikki(text: "Taomlar4"),
    ikki(text: "Taomlar5"),
    ikki(text: "Taomlar6"),
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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Taomlar retsepti...",
                style: TextStyle(color: Colors.white, fontFamily: 'text'),
              ),
              Icon(
                Icons.search,
              )
            ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Nizomiddin'),
                accountEmail: Text('Online'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Mening retseptlarim"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text("Retsept qo'shish"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => retseptqushish()));
                },
              ),
              ListTile(
                leading: Icon(Icons.menu),
                title: Text("Kategoriya"),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => f()));
                },
              ),
              ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text("Kalendar"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.newspaper),
                title: Text("Yangililkalr"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Sozlamalar"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text("Aloqa"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout_sharp),
                title: Text("Chiqish"),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: nom1.map((e) => tamplate(e)).toList()),
        ));
  }
}

class ikki {
  String? rasm;
  String? text;
  ikki({this.rasm, this.text});
}
