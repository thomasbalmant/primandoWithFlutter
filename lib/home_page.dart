import 'package:flutter/material.dart';
import 'package:iniciando/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
        title: const Text('Home Page'),
        actions: const [CustomSwitcher()],
      ),
      // ignore: sized_box_for_whitespace
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text('Counter: $counter'),
          const CustomSwitcher(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(width: 50, height: 50, color: Colors.indigo),
              Container(width: 50, height: 50, color: Colors.indigo),
              Container(width: 50, height: 50, color: Colors.indigo),
              Container(width: 50, height: 50, color: Colors.indigo),
              Container(width: 50, height: 50, color: Colors.indigo),
            ],
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child:
            const Icon(Icons.coronavirus, color: Colors.deepOrange, size: 40.0),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
