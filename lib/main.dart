import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_restaurant/Menuclass.dart';

void main() {
  runApp(new MaterialApp(
    home: Bottombar(),
  ));
}

class Bottombar extends StatefulWidget {
  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {

  int _selectedindex = 0;
  int _counter = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();


    _pageController = PageController();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: Colors.white,
        title: Text('vgh'),
        elevation: 0.0,
      ),

      body: Container(
        child: SizedBox.expand(
          child: Container(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() => _selectedindex = index);
              },
              children: <Widget>[
                Container(child: MenuItem()),
                Container(child: MenuItem()),
                Container(child: MenuItem(),),

              ],

            ),
          ),),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedindex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (int index) { setState(() => _selectedindex = index);
        _pageController.jumpToPage(index); },
        items: [
          BottomNavyBarItem(

              icon: Icon(Icons.home),
              title: Text('home'),
              activeColor: Color(0xffFC766AFF),
              inactiveColor: Color(0xffFCA5F1)
          ),
          BottomNavyBarItem(

              icon: Icon(Icons.home),
              title: Text('SecondHome'),
              activeColor: Color(0xffFC766AFF),
              inactiveColor: Color(0xffFCA5F1)
          ),
          BottomNavyBarItem(icon: Icon(Icons.list),
              title: Text('Category'),
              activeColor: Color(0xffFC766AFF),
              inactiveColor: Color(0xffFCA5F1)
          ),
        ],

      ),
    );
  }
}


