import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sobre'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          'Portal de Noticias é um aplicativo desenvolvido que vai consumir um Api propria desenvolvida em Laravel',
          style: TextStyle(
            fontSize: 15,
            color: Color(
              0xFF5B6B79,
            ),
          ),
        ),
      ),
    );
  }
}
