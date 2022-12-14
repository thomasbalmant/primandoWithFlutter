import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  final emailController = TextEditingController();
  String password = '';
  bool isPassVisible = false;
  final nodeEmail = FocusNode();
  final nodePass = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      onVerticalDragDown: (value) =>
          FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: ClipOval(
                  child: Image.network(
                      'https://avatars.githubusercontent.com/u/60113615?v=4'),
                ),
                accountName: Text('Jhow'),
                accountEmail: Text('Jhow@jhow.jhow'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                subtitle: Text('Home Page'),
                onTap: () {
                  Navigator.of(context).pushNamed('/home');
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Disconnect'),
                subtitle: Text('Login Page'),
                onTap: () {
                  Navigator.of(context).pushNamed('/login');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text(
            'Login',
          ),
          backgroundColor: Colors.pink,
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
                // Navigator.of(context).pushNamed('/home');
              } else {
                FocusScope.of(context).requestFocus(FocusNode());
                Navigator.of(context).pushNamed('/home');
              }
            },
            tooltip: 'Login',
            label: const Text('Apply'),
            backgroundColor: Colors.pink,
            icon: const Icon(Icons.login_sharp)),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
              ),
              Card(
                child: buildEmail(),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                child: buildPassword(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEmail() => TextField(
      focusNode: nodeEmail,
      textCapitalization: TextCapitalization.none,
      controller: emailController,
      onChanged: (text) {
        email = text;
      },
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 3),
            borderRadius: BorderRadius.circular(20)),
        labelText: 'Email',
        hintText: 'name@example.com',
        hintStyle: const TextStyle(color: Colors.white),
        prefixIcon: const Icon(Icons.email),
        suffixIcon: emailController.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                onPressed: () => emailController.clear(),
                icon: const Icon(Icons.close),
              ),
      ));

  Widget buildPassword() => TextField(
        focusNode: nodePass,
        onChanged: (text) => password = text,
        onSubmitted: (text) => password = text,
        obscureText: isPassVisible,
        decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Your Password...',
            border: const OutlineInputBorder(),
            suffixIcon: IconButton(
              onPressed: () => setState(() => {isPassVisible = !isPassVisible}),
              icon: isPassVisible
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility),
            )),
      );
}
