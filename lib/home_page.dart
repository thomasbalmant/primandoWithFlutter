import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
          child: GestureDetector(
        child: Text(
          'Contador: $counter',
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.coronavirus, color: Colors.deepOrange, size: 40.0),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}


// class HomePageState extends State<HomePage> {
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//           child: GestureDetector(
//         child: Text('Contador: $counter'),
//         onTap: () {
//           setState(() {
//             counter++;
//           });
//         },
//       )),
//     );
//   }
// }
