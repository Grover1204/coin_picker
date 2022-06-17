import 'package:coinpicker/coin_logic/random_number.dart';
import 'package:flutter/material.dart';

import 'list_coins.dart';

class CoinPicker extends StatelessWidget {
  const CoinPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Expanded(child: RandomNumber()),
          // Expanded(child: Container(color: Colors.grey, child: Boxcoins())),
        ],
      ),
    );
  }
}
