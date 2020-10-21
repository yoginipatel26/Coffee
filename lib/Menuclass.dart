import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_restaurant/Details.dart';
class MenuItem extends StatefulWidget {
  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15.0),
        children:<Widget> [
          SizedBox(
            height: 35.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Text(
                  'Welcome, Neha',
                style: TextStyle(
                  //fontFamily: 'varela',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF473D3A)
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 15.0),
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                         image: AssetImage('assets/model.jpg'),
                      fit: BoxFit.cover
                    )
                  ),
                ),

              )

            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 45.0),
            child: Container(
              child:Text(
                'Lets select the best taste for your next coffee break!!',
                style: TextStyle(
                  //fontFamily: 'nunito',
                  fontSize: 17.0,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFFB0AAA7),
                ),
              ),

            ),
          ),
          SizedBox(
            height: 25.0,

          ),
          Divider(height: 2,),
          SizedBox(
            height: 25.0,

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Text(
                  'Item of week',
                style: TextStyle(
                  //fontFamily: 'nunito',
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF473D3A),
                ),
                //fontFamily: 'nunito',

              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 15.0),
              //   child: Text(
              //     'See all',
              //     style: TextStyle(
              //       //fontFamily: 'nunito',
              //       fontSize: 17.0,
              //       fontWeight: FontWeight.w300,
              //       color: Color(0xFF473D3A),
              //     ),
              //     //fontFamily: 'nunito',
              //
              //   ),
              // )
            ],
          ),

//item of week list card start
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 410.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _coffeeListCard(
                    'assets/starbucks.png',
                    'Caffe Misto',
                    'Coffeeshop',
                    'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                    '\$4.99',

                ),
                _coffeeListCard('assets/starbucks.png',
                    'Caffe Latte',
                    'BrownHouse',
                    'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                    '\$3.99',

                )
              ]
            )
          ),
          //item of week list card end
          SizedBox(
            height: 25.0,

          ),
          Divider(height: 2,),
          SizedBox(
            height: 25.0,

          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Text(
                'Hot Coffee',
                style: TextStyle(
                  //fontFamily: 'nunito',
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF473D3A),
                ),
                //fontFamily: 'nunito',

              ),

            ],
          ),


//Hot Coffee list card start
          Container(
              height: 410.0,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _coffeeOrderListCard(
                      'assets/starbucks.png',
                      'Caffe Misto',
                      'Coffeeshop',
                      'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                      '\$4.99',

                    ),
                    _coffeeOrderListCard('assets/starbucks.png',
                      'Caffe Latte',
                      'BrownHouse',
                      'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                      '\$3.99',

                    )
                  ]
              )
          ),
//Hot coffee listcard end

          SizedBox(
            height: 25.0,

          ),
          Divider(height: 2,),
          SizedBox(
            height: 25.0,

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Text(
                'Cold Coffee',
                style: TextStyle(
                  //fontFamily: 'nunito',

                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,

                  color: Color(0xFF473D3A),
                ),
                //fontFamily: 'nunito',

              ),

            ],
          ),

          //Cold Coffee list card start
          Container(
              height: 410.0,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _coldcoffeeOrderListCard(
                      'assets/starbucks.png',
                      'Caffe Misto',
                      'Coffeeshop',
                      'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                      '\$4.99',

                    ),
                    _coldcoffeeOrderListCard('assets/starbucks.png',
                      'Caffe Latte',
                      'BrownHouse',
                      'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                      '\$3.99',

                    )
                  ]
              )
          ),
//Cold coffee listcard end

          SizedBox(
            height: 25.0,

          ),
          Divider(height: 2,),
          SizedBox(
            height: 25.0,

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Text(
                'Milk Shake',
                style: TextStyle(
                  //fontFamily: 'nunito',

                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,

                  color: Color(0xFF473D3A),
                ),
                //fontFamily: 'nunito',

              ),

            ],
          ),

          //Milkshake list card start
            Container(
              height: 410.0,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _milkshakeListCard(
                      'assets/starbucks.png',
                      'Caffe Misto',
                      'Coffeeshop',
                      'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                      '\$4.99',

                    ),
                    _milkshakeListCard('assets/starbucks.png',
                      'Caffe Latte',
                      'BrownHouse',
                      'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                      '\$3.99',

                    )
                  ]
              ),

          ),

          //milkshake list card end

          SizedBox(
            height: 25.0,

          ),
          Divider(height: 2,),
          SizedBox(
            height: 25.0,

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Text(
                'Pizza',
                style: TextStyle(
                  //fontFamily: 'nunito',
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF473D3A),
                ),
                //fontFamily: 'nunito',

              ),

            ],
          ),

          //Pizza list card
          Container(
            height: 410.0,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _pizzaListCard(
                    'assets/starbucks.png',
                    'Caffe Misto',
                    'Coffeeshop',
                    'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                    '\$4.99',

                  ),
                  _pizzaListCard('assets/starbucks.png',
                    'Caffe Latte',
                    'BrownHouse',
                    'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                    '\$3.99',

                  )
                ]
            ),

          ),



          SizedBox(height: 15.0),
        ],
      ),
    );
  }

  //item of week listview start
  _coffeeListCard(
      String imgPath,
      String coffeeName,
      String shopName,
      String description,String price
      ){
    return Padding(
        padding: EdgeInsets.only(left: 15.0,right: 15.0),
      child: Container(
        height: 300.0,
        width: 225.0,
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: 335.0,
                ),
                Positioned(
                  top: 75.0,
                  child: Container(
                    padding: EdgeInsets.only(left: 10.0,right: 20.0),
                    height: 260.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFDAB68C)
                    ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 60.0,
                            ),
                            Text(
                              shopName + '\'s',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              coffeeName,
                              style: TextStyle(
                                  fontFamily: 'varela',
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              description,
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  // fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  price,
                                  style: TextStyle(
                                      fontFamily: 'varela',
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF3A4742)),
                                ),
                                // Container(
                                //     height: 40.0,
                                //     width: 40.0,
                                //     decoration: BoxDecoration(
                                //         borderRadius: BorderRadius.circular(20.0),
                                //         color: Colors.white
                                //     ),
                                //     // child: Center(
                                //     //     child: Icon(Icons.favorite,
                                //     //         color: isFavorite ? Colors.red: Colors.grey,
                                //     //         size: 15.0
                                //     //     )
                                //     // )
                                // )
                              ],
                            )
                          ]
                      )
                  ),

                ),
                Positioned(
                    left: 60.0,
                    top: 25.0,
                    child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.contain
                            )
                        )
                    )
                )
              ],
            ),
            SizedBox(height: 20.0),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailsPage()
                  ));
                },
                child: Container(
                    height: 50.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color(0xFF473D3A)
                    ),
                    child: Center(
                        child: Text(
                            'Order Now',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            )
                        )
                    )
                )
            )
          ],
        ),
      ),
    );
  }
//item of week listview end

//cofee listview start
  _coffeeOrderListCard(
      String imgPath,
      String coffeeName,
      String shopName,
      String description,String price
      ){
    return Padding(
      padding: EdgeInsets.only(left: 15.0,right: 15.0),
      child: Container(
        height: 300.0,
        width: 225.0,
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: 335.0,
                ),
                Positioned(
                  top: 75.0,
                  child: Container(
                      padding: EdgeInsets.only(left: 10.0,right: 20.0),
                      height: 260.0,
                      width: 225.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Color(0xFFDAB68C)
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 60.0,
                            ),
                            Text(
                              shopName + '\'s',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              coffeeName,
                              style: TextStyle(
                                  fontFamily: 'varela',
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              description,
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  // fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  price,
                                  style: TextStyle(
                                      fontFamily: 'varela',
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF3A4742)),
                                ),
                                // Container(
                                //     height: 40.0,
                                //     width: 40.0,
                                //     decoration: BoxDecoration(
                                //         borderRadius: BorderRadius.circular(20.0),
                                //         color: Colors.white
                                //     ),
                                //     // child: Center(
                                //     //     child: Icon(Icons.favorite,
                                //     //         color: isFavorite ? Colors.red: Colors.grey,
                                //     //         size: 15.0
                                //     //     )
                                //     // )
                                // )
                              ],
                            )
                          ]
                      )
                  ),

                ),
                Positioned(
                    left: 60.0,
                    top: 25.0,
                    child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.contain
                            )
                        )
                    )
                )
              ],
            ),
            SizedBox(height: 20.0),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailsPage()
                  ));
                },
                child: Container(
                    height: 50.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color(0xFF473D3A)
                    ),
                    child: Center(
                        child: Text(
                            'Order Now',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            )
                        )
                    )
                )
            )
          ],
        ),
      ),
    );
  }
  //coffee listview end


  //Coldcofee listview start
  _coldcoffeeOrderListCard(
      String imgPath,
      String coffeeName,
      String shopName,
      String description,String price
      ){
    return Padding(
      padding: EdgeInsets.only(left: 15.0,right: 15.0),
      child: Container(
        height: 300.0,
        width: 225.0,
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: 335.0,
                ),
                Positioned(
                  top: 75.0,
                  child: Container(
                      padding: EdgeInsets.only(left: 10.0,right: 20.0),
                      height: 260.0,
                      width: 225.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Color(0xFFDAB68C)
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 60.0,
                            ),
                            Text(
                              shopName + '\'s',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              coffeeName,
                              style: TextStyle(
                                  fontFamily: 'varela',
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              description,
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  // fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  price,
                                  style: TextStyle(
                                      fontFamily: 'varela',
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF3A4742)),
                                ),
                                // Container(
                                //     height: 40.0,
                                //     width: 40.0,
                                //     decoration: BoxDecoration(
                                //         borderRadius: BorderRadius.circular(20.0),
                                //         color: Colors.white
                                //     ),
                                //     // child: Center(
                                //     //     child: Icon(Icons.favorite,
                                //     //         color: isFavorite ? Colors.red: Colors.grey,
                                //     //         size: 15.0
                                //     //     )
                                //     // )
                                // )
                              ],
                            )
                          ]
                      )
                  ),

                ),
                Positioned(
                    left: 60.0,
                    top: 25.0,
                    child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.contain
                            )
                        )
                    )
                )
              ],
            ),
            SizedBox(height: 20.0),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailsPage()
                  ));
                },
                child: Container(
                    height: 50.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color(0xFF473D3A)
                    ),
                    child: Center(
                        child: Text(
                            'Order Now',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            )
                        )
                    )
                )
            )
          ],
        ),
      ),
    );
  }
  //Cold coffee listview end

  //milkshake listview start
  _milkshakeListCard(
      String imgPath,
      String coffeeName,
      String shopName,
      String description,String price
      ){
    return Padding(
      padding: EdgeInsets.only(left: 15.0,right: 15.0),
      child: Container(
        height: 300.0,
        width: 225.0,
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: 335.0,
                ),
                Positioned(
                  top: 75.0,
                  child: Container(
                      padding: EdgeInsets.only(left: 10.0,right: 20.0),
                      height: 260.0,
                      width: 225.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Color(0xFFDAB68C)
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 60.0,
                            ),
                            Text(
                              shopName + '\'s',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              coffeeName,
                              style: TextStyle(
                                  fontFamily: 'varela',
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              description,
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  // fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  price,
                                  style: TextStyle(
                                      fontFamily: 'varela',
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF3A4742)),
                                ),
                                // Container(
                                //     height: 40.0,
                                //     width: 40.0,
                                //     decoration: BoxDecoration(
                                //         borderRadius: BorderRadius.circular(20.0),
                                //         color: Colors.white
                                //     ),
                                //     // child: Center(
                                //     //     child: Icon(Icons.favorite,
                                //     //         color: isFavorite ? Colors.red: Colors.grey,
                                //     //         size: 15.0
                                //     //     )
                                //     // )
                                // )
                              ],
                            )
                          ]
                      )
                  ),

                ),
                Positioned(
                    left: 60.0,
                    top: 25.0,
                    child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.contain
                            )
                        )
                    )
                )
              ],
            ),
            SizedBox(height: 20.0),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailsPage()
                  ));
                },
                child: Container(
                    height: 50.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color(0xFF473D3A)
                    ),
                    child: Center(
                        child: Text(
                            'Order Now',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            )
                        )
                    )
                )
            )
          ],
        ),
      ),
    );
  }
//milkshake listview end


  //pizza listview start
  _pizzaListCard(
      String imgPath,
      String coffeeName,
      String shopName,
      String description,String price
      ){
    return Padding(
      padding: EdgeInsets.only(left: 15.0,right: 15.0),
      child: Container(
        height: 300.0,
        width: 225.0,
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: 335.0,
                ),
                Positioned(
                  top: 75.0,
                  child: Container(
                      padding: EdgeInsets.only(left: 10.0,right: 20.0),
                      height: 260.0,
                      width: 225.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Color(0xFFDAB68C)
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 60.0,
                            ),
                            Text(
                              shopName + '\'s',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              coffeeName,
                              style: TextStyle(
                                  fontFamily: 'varela',
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              description,
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  // fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  price,
                                  style: TextStyle(
                                      fontFamily: 'varela',
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF3A4742)),
                                ),
                                // Container(
                                //     height: 40.0,
                                //     width: 40.0,
                                //     decoration: BoxDecoration(
                                //         borderRadius: BorderRadius.circular(20.0),
                                //         color: Colors.white
                                //     ),
                                //     // child: Center(
                                //     //     child: Icon(Icons.favorite,
                                //     //         color: isFavorite ? Colors.red: Colors.grey,
                                //     //         size: 15.0
                                //     //     )
                                //     // )
                                // )
                              ],
                            )
                          ]
                      )
                  ),

                ),
                Positioned(
                    left: 60.0,
                    top: 25.0,
                    child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.contain
                            )
                        )
                    )
                )
              ],
            ),
            SizedBox(height: 20.0),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailsPage()
                  ));
                },
                child: Container(
                    height: 50.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color(0xFF473D3A)
                    ),
                    child: Center(
                        child: Text(
                            'Order Now',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            )
                        )
                    )
                )
            )
          ],
        ),
      ),
    );
  }
//pizza listview end

}
