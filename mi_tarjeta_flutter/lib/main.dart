import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

void main() {
  runApp(miApp());
}

class miApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          //Container solo puede tener un widget (Es decir, un child)
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("imagenes/yo.PNG"),
              ),
              Text(
                'Víctor Mancera',
                style: prefix0.TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'INGENIERO COMPUTACIONAL',
                style: prefix0.TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15,
                    color: Colors.teal.shade100,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
                width: 300,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 30,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "Phone Number",
                    style: prefix0.TextStyle(
                      color: Colors.teal,
                      fontSize: 20,
                      fontFamily: "SourceSansPro",
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 30,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "Email Adress",
                    style: prefix0.TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 35,
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: LiquidLinearProgressIndicator(
                  value: .7,
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation(Colors.orange),
                  center: Text(
                    "JavaScript",
                    style: prefix0.TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: SizedBox(
                      width: 70,
                      height: 70,
                      child: LiquidCircularProgressIndicator(
                        value: .8,
                        backgroundColor: Colors.white,
                        valueColor: AlwaysStoppedAnimation(Colors.blue),
                        center: Text(
                          "Python",
                          style: prefix0.TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      width: 70,
                      height: 70,
                      child: LiquidCircularProgressIndicator(
                        value: .6,
                        backgroundColor: Colors.white,
                        valueColor: AlwaysStoppedAnimation(Colors.green),
                        center: Text(
                          "C#",
                          style: prefix0.TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  //Widget que permite 'paddear' a su child
                  //Se utiliza con otros widgets que carecen de esta propiedad.
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: SizedBox(
                      width: 70,
                      height: 70,
                      //Establecemos un indicador líquido -Importado
                      child: LiquidCircularProgressIndicator(
                        //Tendrá un valor del 30%
                        value: .3,
                        //Y un color de fondo blanco
                        backgroundColor: Colors.white,
                        //Establezco el color del rojo
                        valueColor: AlwaysStoppedAnimation(Colors.redAccent),
                        center: Text(
                          "Dart",
                          style: prefix0.TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
