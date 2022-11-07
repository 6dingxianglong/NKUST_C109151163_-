import 'package:flutter/material.dart';

import 'menu.dart';
class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Expertise',
          style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: const Color(0xffEBB471),

      ),
    );
  }
}