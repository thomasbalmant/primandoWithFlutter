import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                width: 100,
                height: 100,
              ),
              Container(
                height: 20,
              ),
              TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: const OutlineInputBorder(),
                    suffixIcon: Icon(Icons.email),
                  )),
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
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelText: 'Password',
                    border: OutlineInputBorder()),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
        ),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/moon.jfif',
                fit: BoxFit.cover,
              )),
          _body()
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            if (email.isNotEmpty && password.isNotEmpty) {
              // ignore: avoid_print
              Navigator.of(context).pushNamed('/txtFields');
            } else {
              Navigator.of(context).pushNamed('/txtFields');
            }
          },
          tooltip: 'Login',
          label: const Text('Apply'),
          backgroundColor: Colors.pink,
          icon: const Icon(Icons.login_sharp)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
