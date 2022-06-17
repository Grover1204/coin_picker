import 'package:flutter/material.dart';

import 'coin_logic/coin_picker.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CoinPicker()));
          },
          child: Text('Get Started'),
        ),
      ),
    );
  }
}
