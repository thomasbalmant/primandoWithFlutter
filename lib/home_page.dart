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
      body: Container(
          height: 200,
          width: 200,
          color: Colors.deepOrange,
          child: Center(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.lime,
              child: Text('$counter'),
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
