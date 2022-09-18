import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:iniciando/home_page.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: SizedBox(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // ignore: prefer_const_constructors
//               TextField(
//                 keyboardType: TextInputType.emailAddress,
//                 // ignore: prefer_const_constructors
//                 decoration: InputDecoration(
//                     labelText: 'Email', border: const OutlineInputBorder()),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               FloatingActionButton(
//                 onPressed: () {},
//                 tooltip: 'Login',
//                 child: const Text('Entrar'),
//               )
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                TextField(
                    onChanged: (text) {
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        labelText: 'Email',
                        border: const OutlineInputBorder())),
                const SizedBox(
                  height: 20,
                ),
                // ignore: prefer_const_constructors
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Password', border: OutlineInputBorder()),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (email.isNotEmpty && password.isNotEmpty) {
            // ignore: avoid_print
            Navigator.of(context).push(
                // Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomePage()));
          }
        },
        tooltip: 'Login',
        child: const Text('Login'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}