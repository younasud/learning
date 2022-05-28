import 'package:flutter/cupertino.dart';

import '../models/cardModel.dart';
import 'customCart.dart';

class pharmacy extends StatelessWidget {
  const pharmacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      child: Column(
        children: [
          CustomCard(
            cardImage: 'assets/images/product_1.jpg',
            cardText: 'High Quality keychain',
            cardTitle: 'Pharmacy Cards',
          ),
          ...List.generate(
            demoCards.length,
            (index) => CustomCard(
              cardTitle: demoCards[index].card_Title,
              cardText: demoCards[index].card_Text,
              cardImage: demoCards[index].card_Image,
            ),
          ),
        ],
      ),
    );
  }
}
