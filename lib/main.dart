import 'package:flutter/material.dart';
import './páginas/Pagina_inicio.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown,DeviceOrientation.portraitUp]);
  runApp(MyApp());
  return;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: //Prueba(), 
      PaginaInicio(), 
      );
  }
}