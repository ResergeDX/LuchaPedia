import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'all_fighters.dart';

class BioFighter extends StatelessWidget {
  String urlKemonito =
      "https://images.mediotiempo.com/UTY1h4kQDKtdni9EufhWo3mG1-s=/0x530/uploads/media/2020/02/27/las-mejores-imagenes-de-ke-28.jpg";
  String bioK =
      "KeMonito nacio el 3 de juli de 1967, es un icono de la lucha libre profesional mexicana, actualmente trabaja para la empresa Consejo Mundial de Lucha Libre (CML)";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.directions_walk, size: 40),
        title: Text('Luchapedia',
            style: TextStyle(fontSize: 30, color: Colors.amber[50])),
        backgroundColor: Colors.purpleAccent[700],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment(0.0, 0.0),
                    end: Alignment(0.6, 0.9),
                    colors: [
                  Colors.purpleAccent[700],
                  Colors.deepPurpleAccent[400]
                ])),
          ),
          Column(
            children: [
              Expanded(child: Container()),
              luchadorBio(),
              Expanded(child: Container()),
              Text(
                "Más Luchadores",
                style: TextStyle(
                  fontSize: 29,
                  color: Color.fromRGBO(220, 229, 227, 0.9),
                ),
              ),
              Expanded(child: Container()),
              listaLuchadores(context),
              //FUNCION DE LA PRIMERA PANTALLA
              Expanded(child: Container()),
            ],
          ),
        ],
      ),
    );
  } //Build

  Widget luchadorBio() {
    return Center(
      child: Container(
        height: 385,
        width: 350,
        //decoration: BoxDecoration(
        //color: Colors.indigo[100], borderRadius: BorderRadius.circular(40)),
        child: Stack(
          children: [
            //Image(
            //width: 350,
            //image: NetworkImage(urlKemonito),
            //),
            Positioned(
              top: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/Gifs/loading.gif",
                  image: urlKemonito,
                  width: 350,
                ),
              ),
            ),
            Positioned(
              top: 155,
              left: 10,
              child: Container(
                width: 330,
                height: 210,
                decoration: BoxDecoration(
                  color: Colors.indigo[500],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Kemonito:',
                        style:
                            TextStyle(fontSize: 28, color: Colors.yellow[100])),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(bioK,
                          style: TextStyle(
                              fontSize: 16, color: Colors.yellow[50])),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          color: Colors.teal[400],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Ver más',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        SizedBox(width: 30),
                        FlatButton(
                            color: Colors.pink[400],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text('Me gusta'),
                                Icon(Icons.favorite_border),
                              ],
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  } //luchador Bio

  Widget listaLuchadores(BuildContext context) {
    return Center(
      child: Container(
        height: 120,
        width: 380,
        //decoration: BoxDecoration(
        //color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            //Conteiner Santo
            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  //color: Colors.indigo,
                  image: DecorationImage(
                    image: AssetImage("assets/Luchadores/elSanto.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "El Santo",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Container Angelica
            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  //color: Colors.indigo,
                  image: DecorationImage(
                    image: AssetImage("assets/Luchadores/Angelica.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "Angelica",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue[50],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Container Blue Demon
            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  //color: Colors.indigo,
                  image: DecorationImage(
                    image: AssetImage("assets/Luchadores/blueDemon.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "Blue Demon",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue[50],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Container LadyShani
            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  //color: Colors.indigo,
                  image: DecorationImage(
                    image: AssetImage("assets/Luchadores/ladyShani.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "LadyShani",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.indigo[50],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Container Historico
            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  //color: Colors.indigo,
                  image: DecorationImage(
                    image: AssetImage("assets/Luchadores/historico.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "Historico",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.yellow[50],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Container Diosa Quetzal
            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  //color: Colors.indigo,
                  image: DecorationImage(
                    image: AssetImage("assets/Luchadores/diosaQuetzal.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 65, left: 2),
                child: Text(
                  "Diosa Quetzal",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.green[50],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Container Tiniebla
            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  //color: Colors.indigo,
                  image: DecorationImage(
                    image: AssetImage("assets/Luchadores/tiniebla.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "Tiniebla",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.green[50],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Container Frijolito
            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  //color: Colors.indigo,
                  image: DecorationImage(
                    image: AssetImage("assets/Luchadores/frijolito.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "Frijolito",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.green[50],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Container mas luchadores
            Container(
                margin: EdgeInsets.all(5),
                width: 100,
                decoration: BoxDecoration(
                    //color: Colors.indigo,
                    image: DecorationImage(
                      image: AssetImage("assets/Luchadores/masLuchadores.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                    child: IconButton(
                  icon: Icon(Icons.add_circle_outline,
                      color: Colors.lightBlueAccent[400], size: 80),
                  onPressed: () {
                    print("Mas Luchadores");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => AllFighters(),
                      ),
                    );
                  },
                ))),
          ],
        ),
      ),
    );
  }
}
