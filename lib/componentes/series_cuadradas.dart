import 'package:flutter/material.dart';

class SeriesCuadradas extends StatelessWidget {
  final String name;
  SeriesCuadradas(this.name);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Stack(
          alignment: Alignment.topLeft,
          children: [
          Container(
              height: 150,
              width: 110,
              child: Image.asset('assets/img/' + name + '.jpg',
                  fit: BoxFit.cover)),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 5),
            child: Image.asset('assets/img/logo.png', width: 10,),
          )
        ]),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
