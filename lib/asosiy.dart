import 'package:flutter/material.dart';
import 'package:flutter_application_1/birinchi.dart';
import 'package:flutter_application_1/ikkinchi.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/uchunchi.dart';

class a extends StatefulWidget {
  const a({super.key});

  @override
  State<a> createState() => _aState();
}

class _aState extends State<a> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  void nomvoid(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  static List<Widget> images = <Widget>[b(), f(), s(), d()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: images.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        backgroundColor:
            Colors.blue, // Change background color of the navigation bar
        selectedItemColor: Colors.red[400], // Change selected item color
        unselectedItemColor: Colors.grey, // Change unselected item color
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Bosh sahifa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Kategoriya',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Sevimli',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// class a extends StatefulWidget {
//   const a({super.key});

//   @override
//   State<a> createState() => _aState();
// }

// class _aState extends State<a> {
//   int _currentIndex = 0;
//   void nomvoid(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   static List<Widget> images = <Widget>[];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: images.elementAt(_currentIndex),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },

//         backgroundColor:
//             Colors.blue, // Change background color of the navigation bar
//         selectedItemColor: Colors.black, // Change selected item color
//         unselectedItemColor: Colors.grey, // Change unselected item color
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Bosh sahifa',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: 'Katalog',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_bag),
//             label: 'Savatcha',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
