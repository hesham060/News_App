import 'package:flutter/material.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Sports Screen',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
