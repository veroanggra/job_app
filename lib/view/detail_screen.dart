import 'package:flutter/material.dart';

class detailScreen extends StatefulWidget {
  const detailScreen({Key? key}) : super(key: key);

  @override
  _detailScreenState createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text('Ini Detail')),
    );
  }
}
