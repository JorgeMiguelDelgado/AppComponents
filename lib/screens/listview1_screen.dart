import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['python', 'flutter', 'django', 'laravel', 'node-js'];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options
              .map(
                (lang) => ListTile(
                  title: Text(lang),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
