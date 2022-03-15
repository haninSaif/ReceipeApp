import 'package:flutter/material.dart';
import 'package:myrecipesapp/models/recipts.dart';

import 'dart:convert';
import 'dart:ui';



class ReciptsItems extends StatelessWidget {
  // const ReciptsItems({Key? key}) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexilty complexity;
  final Affordability affordability;

  ReciptsItems(
      {this.id,
        this.title,
        this.affordability,
        this.complexity,
        this.duration,
        this.imageUrl});

  String get ComplexiltyText {
    switch (complexity) {
      case Complexilty.Simple:
        return 'Simple';
        break;

      case Complexilty.Challenging:
        return 'Challenging';
        break;

      case Complexilty.Hard:
        return 'Hard';
        break;
    }
  }

  String get AffordabilityText {
    switch (affordability) {
      case Affordability.affordability:
        return 'Affordability';
        break;

      case Affordability.Luxurious:
        return 'Luxurious';
        break;

      case Affordability.Pricey:
        return 'Pricey';
        break;
    }
  }

  void selectRecipts() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectRecipts,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 20,
        margin: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    height: 250,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Icon(Icons.timer),
                        SizedBox(
                          width: 6,
                        ),
                        Text('$duration min'),
                      ]),
                      Row(children: <Widget>[
                        Icon(Icons.work),
                        SizedBox(
                          width: 6,
                        ),
                        Text(ComplexiltyText),
                      ]),
                      Row(children: <Widget>[
                        Icon(Icons.money),
                        SizedBox(
                          width: 6,
                        ),
                        Text(AffordabilityText),
                      ])
                    ]))
          ],
        ),
      ),
    );
  }
}
