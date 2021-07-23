import 'dart:ui';

import 'package:flutter/material.dart';

class SeriesCirculares extends StatelessWidget {
  final String serie;
  final Color color;
  SeriesCirculares(this.serie, this.color);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            //Image.asset('assets/img/TC.jpg')
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110),
                border: Border.all(color: color, width: 2),
              ),

              child: ClipOval(
                  child: Image.asset(
                'assets/img/' + serie + '.jpg',
                fit: BoxFit.cover,
              )),
            ),
            /**Degradado para que se vean mejor las letras*/
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black])),
            ),            
            Image.asset(
              'assets/img/' + serie + '_font.png',
              scale: 10,
            ),

          ],
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
