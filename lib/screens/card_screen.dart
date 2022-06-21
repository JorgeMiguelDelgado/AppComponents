import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCarType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}