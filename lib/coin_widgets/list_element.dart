import 'dart:developer';

import 'package:coinpicker/global.dart';
import 'package:flutter/material.dart';

Widget listElements(BuildContext context) {
  return ListView.builder(
    itemBuilder: (context, index) {
      int reverseindex = final_k.length - 1 - index;
      return Container(
        child: (index >= 0)
            ? Text(
                final_k[reverseindex].toString(),
                style: TextStyle(),
              )
            : Text('Game is not started'),
      );
    },
    itemCount: final_k.length,
  );
}


// (index > 0)
//           ? Text(
//               final_k[reverseindex].toString(),
//               style: TextStyle(),
//             )
//           : Text('Game is not started')