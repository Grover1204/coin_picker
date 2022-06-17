import 'package:coinpicker/global.dart';
import 'package:flutter/material.dart';

class ListCoins extends StatelessWidget {
  final int value;
  ListCoins({Key? key, required this.value}) : super(key: key);
  List k = final_k;
  Widget boxContainer(int number, List k) {
    return Container(
      margin: EdgeInsets.only(
        left: 3,
        bottom: 10,
        right: number.remainder(10) == 0 ? 3 : 0,
        top: number < 11 ? 10 : 0,
      ),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          color: k.contains(number)
              ? (k.last == number)
                  ? Colors.green
                  : Colors.pink
              : Colors.yellow,
          borderRadius: BorderRadius.circular(1)),
      child: Text(number.toString()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return boxContainer(value, k);
  }
}
