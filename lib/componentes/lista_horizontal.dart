import 'package:flutter/material.dart';
import '../componentes/series_circulares.dart';
import '../componentes/series_cuadradas.dart';

class ListaHorizontal extends StatelessWidget{
  final List<String> series;
  final List<Color> color;
  final int selector;
  final double size;
  ListaHorizontal(this.series, this.color, this.selector, this.size);

  Widget build(BuildContext context) {
    return Container(
        height: size,
        child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Row(children: [
                if(selector==1)
                  SeriesCirculares(series[index % series.length], color[index % color.length])
                else
                  SeriesCuadradas(series[index % series.length])
              ]);
            })
        /*ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SeriesCirculares(series[0], Colors.green[500]),
          //SizedBox(width: 100), 
          SeriesCirculares(series[1], Colors.red), 
          SeriesCirculares(series[2], Colors.yellow),
          SeriesCirculares(series[3], Colors.yellow),
          ],
      ),*/
        );
  }
  }