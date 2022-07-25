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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg', name: 'Un hermoso Paisaje'),
          SizedBox(height: 20),
          CustomCardType2(imageUrl:'https://epsep.com.mx/wp-content/uploads/2020/10/travel-landscape-01.jpg'),
           SizedBox(height: 20),
          CustomCardType2(imageUrl:'https://mymodernmet.com/wp/wp-content/uploads/2020/02/Landscape-Photographer-of-the-Year-Sander-Grefte.jpg'),
           SizedBox(height: 100),
        ]
      )
    );
  }
}

