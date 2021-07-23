import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/componentes/lista_horizontal.dart';

import '../componentes/cartel_principal.dart';

class PaginaInicio extends StatelessWidget {
  build(context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: barraInferior(),
      body: ListView(children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CartelPrincipal(),
          //SeriesCirculares(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
            child: Text(
              'Previews',
              textAlign: TextAlign.left,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          ListaHorizontal(<String>[
            'TC',
            'MH',
            'SP',
            'N',
            'QG',
            'CK'
          ], <Color>[
            Colors.green[500],
            Colors.red,
            Colors.yellow,
            Colors.white,
            Colors.pink[100],
            Colors.brown[200]
          ], 1, 110),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 5, left: 10),
            child: Text(
              'Popular on Netflix',
              textAlign: TextAlign.left,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
                    ListaHorizontal(<String>[
            'TW',
            'N',
            'AF',
            'TK',
            'MH',
            'OZ',
          ], <Color>[
          ], 0,150),
                    Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 5, left: 10),
            child: Text(
              'Trending Now',
              textAlign: TextAlign.left,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
                    ListaHorizontal(<String>[
            'TK',
            'SE',
            '6U',
            'CK',
            'MH',
            'TA'
          ], <Color>[
          ], 0, 150),
                    Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 5, left: 10),
            child: Text(
              'Watch it Again',
              textAlign: TextAlign.left,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
                    ListaHorizontal(<String>[
            'OZ',
            'CKA',
            'TA',
            'QG',
            'ST',
            'CK',
            'ST'
          ], <Color>[
          ], 0, 150),
        ]),
      ]),
    );
  }

  

  BottomNavigationBar barraInferior() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'Comming Soon'),
        BottomNavigationBarItem(icon: Icon(Icons.download_sharp), label: 'Downloads'),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),       ],
    );
  }
}
