import 'package:flutter/material.dart';

class NoEndpointFound extends StatelessWidget {
  const NoEndpointFound({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(text)),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
