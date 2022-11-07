import 'package:flutter/material.dart';
class page4 extends StatefulWidget {
  const page4({Key? key}) : super(key: key);

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reading Plan'),
        centerTitle: true,
        backgroundColor: const Color(0xffEBB471),
      ),
    );
  }
}