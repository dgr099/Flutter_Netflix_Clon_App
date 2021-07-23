import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import './nav_bar_superior.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context);
    double size;
    /**"responsive design try"*/
    if(data.orientation==Orientation.portrait){
      size=data.size.height/1.4;
    } else //size=data.size.height;
    size=data.size.height/1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            //Image.asset('assets/img/Stranger_things.png'),
            /*Imagen de la serie, no tiene un diseño responsivo, estoy aprendiendo xd*/
            Center(
              child: Image.asset(
                'assets/img/ST.jpg',
                fit: BoxFit.cover,
                height: size,
                //height: 100,
                alignment: Alignment.center,
              ),
            ),
            /**Barra de navegación */
            SafeArea(
              child: NavBarSuperior(),
            ),
            /**Título de la serie y el Netfilx serie */
            titulo('STRANGER THINGS', <String>['Ominous', 'Exciting', 'Teen'], size),
          ],
        ),
      ],
    );
  }

  Widget titulo(String name, List<String> desc, double mar) {
    List<String> nombre = name.split(" ");
    return Center(
      child: Padding(
          child: Column(
            children: [
              /*netflix series*/
              Image.asset('assets/img/Nseries.png', alignment: Alignment.bottomCenter, scale: 2.75),
              /*Stranger*/
              Text(
                nombre[0],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontFamily: 'Stranger_Things',
                ),
              ),
              /*Things*/
              Text(
                nombre[1],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Stranger_Things'),
              ),
              descripcion(desc),
              botonesArriba(),
            ],
          ),
          padding: EdgeInsets.only(
            /*top: 335,*/
            top: mar/1.75,
          )),
    );
  }

  Widget descripcion(List<String> list) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          top: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              list[0],
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.circle,
              color: Colors.red,
              size: 5,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              list[1],
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.circle,
              color: Colors.red,
              size: 5,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              list[2],
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget botonesArriba() {
    const url = 'https://www.youtube.com/watch?v=ZRc1FOlSTLE&ab_channel=FilmSelectEspañol';
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          /**My list */
          Column(
            children: [
              Icon(Icons.add, color: Colors.white, size: 30,),
              Text('My List', style: TextStyle(color: Colors.white, fontSize: 8),)
            ],
          ),
          /**Play*/
          TextButton(
              onPressed: ()async{
                if (await canLaunch(url)) {
                  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
                  await launch(url);
                }
              },
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                  child: Row(
                    children: [
                      Icon(Icons.play_arrow, color: Colors.black, size: 35,),
                      Text(
                        'Play',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              )),
          /**Info*/
            Column(
            children: [
              Icon(Icons.info_outline_rounded, color: Colors.white, size: 30,),
              Text('Info', style: TextStyle(color: Colors.white, fontSize: 8),)
            ],
          ),
        ],
      ),
    );
  }

  
}
