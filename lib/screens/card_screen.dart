import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {

  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          CustomCardType1(),
        ]
      )
    );
  }
}

