import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'asosiy.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'birinchi.dart';
import 'login.dart';
import 'signup.dart';
import 'uchunchi.dart';
import 'ikkinchi.dart';
import 'retsept qushish.dart';

// void main() {
//   runApp(MyWidget());
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _currentIndex = 0;
//   void nomvoid(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   static List<Widget> images = <Widget>[b()];

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
//         selectedItemColor: Colors.red[400], // Change selected item color
//         unselectedItemColor: Colors.grey, // Change unselected item color
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Bosh sahifa',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.autorenew),
//             label: 'Yangilash',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Sozlamalar',
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

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final fnom = TextStyle();
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) => Navigator.of(context)
        .pushReplacement(CupertinoPageRoute(builder: (newj) => MyHomePage())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [const Color.fromARGB(255, 224, 70, 59), Colors.white],
                stops: [0.2, 0.8])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpinKitCircle(
                color: Colors.white, // Color of the spinner
                size: 50.0, // Size of the spinner
              ),
              SizedBox(height: 20), // Add some space below the spinner
              Text(
                'Taomlar retsepti...',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'text',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
