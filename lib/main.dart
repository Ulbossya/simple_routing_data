import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: FirstHome(),
  ));
}

class FirstHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Home'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            User user = User(name: 'Konstantin', age: 34);
            Route route = MaterialPageRoute(builder: (context) => SecondHome(user: user));
            Navigator.push(context, route);   
  },
  child: Text('Second Home') 
              ),
    ),
    );
  }
}


class SecondHome extends StatelessWidget {
  final User user;
  SecondHome({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${user.name} - ${user.age}'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}

class User {
  final String name;
  final int age;

  User({required this.name, required this.age});
}