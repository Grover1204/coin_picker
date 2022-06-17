import 'package:coinpicker/coin_widgets/box_container.dart';
import 'package:coinpicker/global.dart';
import 'package:flutter/material.dart';

class Boxcoins extends StatefulWidget {
  const Boxcoins({Key? key}) : super(key: key);

  @override
  State<Boxcoins> createState() => _BoxcoinsState();
}

class _BoxcoinsState extends State<Boxcoins> {
  @override
  Widget build(BuildContext context) {
    return Table(
      // border: TableBorder(top: BorderSide(width: , color: Colors.green)),
      children: [
        //
        // coin from 10
        TableRow(
            // decoration: BoxDecoration(
            //   color: Colors.grey,
            // ),
            children: [
              ListCoins(value: 1),
              ListCoins(value: 2),
              ListCoins(value: 3),
              ListCoins(value: 4),
              ListCoins(value: 5),
              ListCoins(value: 6),
              ListCoins(value: 7),
              ListCoins(value: 8),
              ListCoins(value: 9),
              ListCoins(value: 10),
            ]),
        TableRow(
            // decoration: BoxDecoration(
            //   color: Colors.grey,
            // ),
            children: [
              // SizedBox(height: 10),
              ListCoins(value: 11),
              ListCoins(value: 12),
              ListCoins(value: 13),
              ListCoins(value: 14),
              ListCoins(value: 15),
              ListCoins(value: 16),
              ListCoins(value: 17),
              ListCoins(value: 18),
              ListCoins(value: 19),
              ListCoins(value: 20),
            ]),

        TableRow(
            // decoration: BoxDecoration(
            //   color: Colors.grey,
            // ),
            children: [
              ListCoins(value: 21),
              ListCoins(value: 22),
              ListCoins(value: 23),
              ListCoins(value: 24),
              ListCoins(value: 25),
              ListCoins(value: 26),
              ListCoins(value: 27),
              ListCoins(value: 28),
              ListCoins(value: 29),
              ListCoins(value: 30),
            ]),
        TableRow(
            // decoration: BoxDecoration(
            //   color: Colors.grey,
            // ),
            children: [
              ListCoins(value: 31),
              ListCoins(value: 32),
              ListCoins(value: 33),
              ListCoins(value: 34),
              ListCoins(value: 35),
              ListCoins(value: 36),
              ListCoins(value: 37),
              ListCoins(value: 38),
              ListCoins(value: 39),
              ListCoins(value: 40),
            ]),
        TableRow(
            // decoration: BoxDecoration(
            //   color: Colors.grey,
            // ),
            children: [
              ListCoins(value: 41),
              ListCoins(value: 42),
              ListCoins(value: 43),
              ListCoins(value: 44),
              ListCoins(value: 45),
              ListCoins(value: 46),
              ListCoins(value: 47),
              ListCoins(value: 48),
              ListCoins(value: 49),
              ListCoins(value: 50),
            ]),
        TableRow(
            // decoration: BoxDecoration(
            //   color: Colors.grey,
            // ),
            children: [
              ListCoins(value: 51),
              ListCoins(value: 52),
              ListCoins(value: 53),
              ListCoins(value: 54),
              ListCoins(value: 55),
              ListCoins(value: 56),
              ListCoins(value: 57),
              ListCoins(value: 58),
              ListCoins(value: 59),
              ListCoins(value: 60),
            ]),
        TableRow(
            // decoration: BoxDecoration(
            //   color: Colors.grey,
            // ),
            children: [
              ListCoins(value: 61),
              ListCoins(value: 62),
              ListCoins(value: 63),
              ListCoins(value: 64),
              ListCoins(value: 65),
              ListCoins(value: 66),
              ListCoins(value: 67),
              ListCoins(value: 68),
              ListCoins(value: 69),
              ListCoins(value: 70),
            ]),
        TableRow(
            // decoration: BoxDecoration(
            //   color: Colors.grey,
            // ),
            children: [
              ListCoins(value: 71),
              ListCoins(value: 72),
              ListCoins(value: 73),
              ListCoins(value: 74),
              ListCoins(value: 75),
              ListCoins(value: 76),
              ListCoins(value: 77),
              ListCoins(value: 78),
              ListCoins(value: 79),
              ListCoins(value: 80),
            ]),
        TableRow(
            // decoration: BoxDecoration(
            //   color: Colors.grey,
            // ),
            children: [
              ListCoins(value: 81),
              ListCoins(value: 82),
              ListCoins(value: 83),
              ListCoins(value: 84),
              ListCoins(value: 85),
              ListCoins(value: 86),
              ListCoins(value: 87),
              ListCoins(value: 88),
              ListCoins(value: 89),
              ListCoins(value: 90),
            ]),
      ],
    );
  }
}
