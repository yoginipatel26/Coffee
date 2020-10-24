import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
class PlaceOrder extends StatefulWidget {
  @override
  _PlaceOrderState createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  int item_quanttity = 1;
  bool _value=false;
  int _DropValue=1;
  int sugar=1;
  int icecube=1;
  int cream=1;

  String cf = 'Cold';
  String hf = 'Hot';
  bool textShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body:Stack(
              children:<Widget> [
                Container(
                    height: MediaQuery.of(context).size.height - 20.0,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFFF3B2B7)
                ),

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
                        ),

                      child:  SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Quantity',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF473D3A),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 125.0),
                              child: Row(

                                //crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      if(item_quanttity > 1)
                                      {
                                        setState(() {
                                          item_quanttity--;
                                        });
                                      }
                                    },
                                    child: Container(
                                      height: 36,
                                      width: 36,
                                      decoration: BoxDecoration(
                                          color: Colors.pinkAccent,
                                          borderRadius: BorderRadius.circular(20)

                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    '$item_quanttity',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  GestureDetector(
                                    onTap: (){
                                      if(item_quanttity < 9)
                                      {
                                        setState(() {
                                          item_quanttity++;
                                        });
                                      }
                                    },
                                    child: Container(
                                      height: 36,
                                      width: 36,
                                      decoration: BoxDecoration(
                                          color: Colors.pinkAccent,
                                          borderRadius: BorderRadius.circular(20)

                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                ],
                              ),


                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Divider(
                                height: 3,
                              ),



                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Select Size',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF473D3A),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      color: Colors.grey[200],
                                    ),
                                    height: 50.0,
                                    width: 70.0,

                                    child: Center(
                                      child: DropdownButton(
                                        value: _DropValue,
                                        items: [
                                          DropdownMenuItem(
                                            child: Text("M",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,


                                            ),),
                                            value: 0,
                                          ),
                                          DropdownMenuItem(
                                            child: Text("S",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            value: 1,
                                          ),
                                          DropdownMenuItem(
                                            child: Text("L",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            value: 2,
                                          ),
                                        ],
                                        onChanged: (_value){
                                          setState(() {
                                            _value = _value;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Divider(
                                height: 3,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Sugar',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF473D3A),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Row(

                                //crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset("assets/sugarcubes.png"),
                                  GestureDetector(
                                    onTap: (){
                                      if(sugar > 1)
                                      {
                                        setState(() {
                                          sugar--;
                                        });
                                      }
                                    },
                                    child: Container(

                                      height: 36,
                                      width: 36,
                                      decoration: BoxDecoration(
                                          color: Colors.pinkAccent,
                                          borderRadius: BorderRadius.circular(30)

                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    '$sugar Cubes',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  GestureDetector(
                                    onTap: (){
                                      if(sugar < 9)
                                      {
                                        setState(() {
                                          sugar++;
                                        });
                                      }
                                    },
                                    child: Container(
                                      height: 36,
                                      width: 36,
                                      decoration: BoxDecoration(
                                          color: Colors.pinkAccent,
                                          borderRadius: BorderRadius.circular(30)

                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  //Image.asset("assets/sugarcubes.png"),
                                ],

                              ),


                            ),

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Divider(
                                height: 3,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Ice Cube',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF473D3A),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Row(

                                //crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset("assets/icecube.png"),
                                  GestureDetector(
                                    onTap: (){
                                      if(icecube > 1)
                                      {
                                        setState(() {
                                          icecube--;
                                        });
                                      }
                                    },
                                    child: Container(
                                      height: 36,
                                      width: 36,
                                      decoration: BoxDecoration(
                                          color: Colors.pinkAccent,
                                          borderRadius: BorderRadius.circular(30)

                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    '$icecube Cubes',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  GestureDetector(
                                    onTap: (){
                                      if(icecube < 9)
                                      {
                                        setState(() {
                                          icecube++;
                                        });
                                      }
                                    },
                                    child: Container(
                                      height: 36,
                                      width: 36,
                                      decoration: BoxDecoration(
                                          color: Colors.pinkAccent,
                                          borderRadius: BorderRadius.circular(30)

                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  //Image.asset("assets/sugarcubes.png"),
                                ],

                              ),


                            ),

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Divider(
                                height: 3,
                              ),
                            ),

                            Padding(

                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Cream',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF473D3A),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey[200],
                                ),
                                height: 50.0,
                                width: 130.0,

                                child: Row(
                                  children: [
                                    Image.asset("assets/cream.png"),
                                    SizedBox(width: 16,),

                                    Center(
                                      child: DropdownButton(
                                        value: cream,
                                        items: [
                                          DropdownMenuItem(
                                            child: Text("Yes",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.bold,


                                              ),),
                                            value: 0,
                                          ),
                                          DropdownMenuItem(
                                            child: Text("No",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            value: 1,
                                          ),

                                        ],
                                        onChanged: (cream){
                                          setState(() {
                                            cream=cream;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ),

                          ],
                        ),
                      ),
                    ),
                ),

              ],
            )

    );
  }
}
