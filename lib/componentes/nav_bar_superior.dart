import 'package:flutter/material.dart';

class NavBarSuperior extends StatelessWidget {
  build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/img/logo.png',
          width: 22,
        ),
        Text(
          'TV Shows',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        Text(
          'Movies',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        Text(
          'My list',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ],
    );
  }
}
