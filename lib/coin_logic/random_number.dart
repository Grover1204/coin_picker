import 'dart:math';

import 'package:coinpicker/coin_logic/list_coins.dart';
import 'package:coinpicker/coin_widgets/list_element.dart';
import 'package:coinpicker/global.dart';
import 'package:flutter/material.dart';

class RandomNumber extends StatefulWidget {
  const RandomNumber({Key? key}) : super(key: key);

  @override
  State<RandomNumber> createState() => _RandomNumberState();
}

class _RandomNumberState extends State<RandomNumber> {
  int trueValue = 0;
  List finalList = [];
  int randonNumber(List k) {
    List ken = k;
    Random rand = Random();
    int value = 0;
    // if (ken.length == 90) {
    //   final_k.add('game over');
    //   final_k.add('game over');
    //   print('Game is  completed in loop');
    //   print(ken.length);
    // }
    // print(value.toString() + 'actual value checked');
    while (ken.length < 90) {
      value = rand.nextInt(91);
      if (ken.contains(value) || value == 0) {
        // print(value.toString() + 'repeted value checked');
        value = rand.nextInt(91);
        continue;
      } else {
        ken.add(value);
        final_k.add(value);
        break;
      }
    }
    // print('I m done');
    // print(value.toString() + 'after checked');
    // print(ken.toString());
    return value;
  }

  showSnakBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red[300],
        content: Text(
          'Game is over',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  showSnakBar2(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green[300],
        content: Text(
          'Game not started',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(final_k.length == 0
                        ? 'Game not started'
                        : 'random element list'),
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(left: 20),
                      // color: Colors.green,
                      height: 100,
                      child: listElements(context),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 30),

                  //
                  //
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                      child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        print(final_k.length);
                        finalList.length < 91
                            ? trueValue = randonNumber(finalList)
                            : {
                                showSnakBar(context),
                                print('game is over'),
                              };
                        Boxcoins();
                      });
                    },
                    child: Text('Get random number'),
                  )),
                  SizedBox(height: 30),
                  (final_k.length >= 90 || final_k.length == 0)
                      ? Container(
                          alignment: Alignment.center,
                          width: 140,
                          height: 80,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: (final_k.length >= 90)
                              ? Text('Game is over')
                              : Text('Start game'),
                        )
                      : Container(
                          alignment: Alignment.center,
                          width: 140,
                          height: 80,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(trueValue.toString()),
                        ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      setState(() {
                        final_k.length != 0
                            ? {
                                finalList.clear(),
                                final_k.clear(),
                              }
                            : {
                                showSnakBar2(context),
                                print('game not started'),
                              };
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          // border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Reset game',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(child: Container(color: Colors.blue[300], child: Boxcoins())),
      ],
    );
  }
}
