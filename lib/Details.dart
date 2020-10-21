import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_restaurant/Order.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: ListView(
           children: [
             Stack(
               children: <Widget>[
                 Container(
                     height: MediaQuery.of(context).size.height - 20.0,
                     width: MediaQuery.of(context).size.width,
                     color: Color(0xFFF3B2B7)),
                 Positioned(
                     top: MediaQuery.of(context).size.height / 2,
                     child: Container(
                         height: MediaQuery.of(context).size.height / 2 - 20.0,
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.only(
                                 topRight: Radius.circular(40.0),
                                 topLeft: Radius.circular(40.0)),
                             color: Colors.white
                         )
                     )
                 ),

                             //Content
                             Positioned(
                                    top: MediaQuery.of(context).size.height / 2 + 25.0,
                                    left: 15.0,
                                    child: Container(
                                    height: (MediaQuery.of(context).size.height / 2) - 50.0,
                                    width: MediaQuery.of(context).size.width,
                                      child: ListView(
                                           children: <Widget>[

                                             Text(
                                               'Preparation time',
                                               style: TextStyle(
                                                   fontFamily: 'nunito',
                                                   fontSize: 14.0,
                                                   fontWeight: FontWeight.bold,
                                                   color: Color(0xFF726B68)),
                                             ),
                                             SizedBox(height: 7.0),
                                             Text(
                                               '5min',
                                               style: TextStyle(
                                                   fontFamily: 'nunito',
                                                   fontSize: 14.0,
                                                   color: Color(0xFFC6C4C4)),
                                             ),
                                             SizedBox(height: 10.0),
                                             Padding(
                                               padding: const EdgeInsets.only(right: 35.0),
                                               child: Container(
                                                 height: 0.5,
                                                 color: Color(0xFFC6C4C4),
                                               ),
                                             ),

                                             SizedBox(height: 10.0),
                                             Text(
                                               'Ingredients',
                                               style: TextStyle(
                                                   fontFamily: 'nunito',
                                                   fontSize: 14.0,
                                                   fontWeight: FontWeight.bold,
                                                   color: Color(0xFF726B68)),
                                             ),
                                             SizedBox(height: 20.0),
                                             Container(
                                               height: 110.0,
                                               child: ListView(
                                                 scrollDirection: Axis.horizontal,
                                                 children: [
                                                 buildIngredientItem(
                                                 'Water',
                                                 Icon(Feather.getIconData('droplet'),
                                                     size: 10.0, color: Colors.white),
                                                     Color(0xFF6FC5DA)
                                                 ),
                                                   buildIngredientItem(
                                                       'Brewed Espresso',
                                                       Icon(Feather.getIconData("target"), size: 18.0, color: Colors.white),
                                                       Color(0xFF615955)),
                                                   buildIngredientItem(
                                                       'Sugar',
                                                       Icon(Feather.getIconData("box"), size: 18.0, color: Colors.white),
                                                       Color(0xFFF39595)),

                                                   // buildIngredientItem(
                                                   //     'Toffee Nut Syrup',
                                                   //     Icon(MaterialCommunityIcons.getIconData("peanut-outline"), size: 18.0, color: Colors.white),
                                                   //     Color(0xFF8FC28A)),

                                                   // buildIngredientItem(
                                                   //     'Natural Flavors',
                                                   //     Icon(MaterialCommunityIcons.getIconData("leaf-maple"), size: 18.0, color: Colors.white),
                                                   //     Color(0xFF3B8079)),

                                                   // buildIngredientItem(
                                                   //     'Vanilla Syrup',
                                                   //     Icon(MaterialCommunityIcons.getIconData("flower-tulip-outline"), size: 18.0, color: Colors.white),
                                                   //     Color(0xFFF8B870)),
                                                   SizedBox(width: 25.0),
                                                 ],
                                               ),
                                             ),
                                             Padding(
                                               padding: const EdgeInsets.only(right: 35.0),
                                               child: Container(
                                                 height: 0.5,
                                                 color: Color(0xFFC6C4C4),
                                               ),
                                             ),
                                             SizedBox(height: 10.0),
                                             Padding(
                                                 padding: EdgeInsets.only(right: 25.0),
                                                 child: Container(
                                                   height: 50.0,
                                                   decoration: BoxDecoration(
                                                       borderRadius: BorderRadius.circular(35.0),
                                                       color: Color(0xFF473D3A)
                                                   ),
                                                   child: Center(
                                                     child: GestureDetector(
                                                       onTap: (){
                                                         Navigator.push(
                                                           context,
                                                           MaterialPageRoute(builder: (context) => PlaceOrder()),
                                                         );
                                                       },
                                                       child: Text('Make Order',
                                                         style: TextStyle(
                                                             fontFamily: 'nunito',
                                                             fontSize: 14.0,
                                                             fontWeight: FontWeight.bold,
                                                             color: Colors.white),
                                                       ),
                                                     ),
                                                   ),
                                                 )
                                             ),
                                             SizedBox(height: 5.0)
                                           ],
                                      ),

    )
                             ),
                 Positioned(
                     top: MediaQuery.of(context).size.height /10,
                     left: 75.0,
                     child: Container(
                         height: 400.0,
                         width: 400.0,
                         decoration: BoxDecoration(
                             image: DecorationImage(
                                 image: AssetImage('assets/pinkcup.png'),
                                 fit: BoxFit.cover
                             )
                         )
                     )
                 ),

               ],

             )
           ],


         ),
    );
  }

  buildIngredientItem(String name, Icon iconName, Color bgColor) {
    return Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Column(
            children: [
              Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: bgColor
                  ),
                  child: Center(
                      child: iconName
                  )
              ),
              SizedBox(height: 4.0),
              Container(
                  width: 60.0,
                  child: Center(
                      child: Text(name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 12.0,
                              color: Color(0xFFC2C0C0)
                          )
                      )
                  )
              )
            ]
        )
    );
  }
}


