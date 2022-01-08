import 'package:flutter/material.dart';
import 'package:hive_diary_flutter/utils/routs.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.homeRoute);
          },
          child: Text('Start'),
        ),
      ),
    );
  }
}
