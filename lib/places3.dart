import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Places3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF0E5D4),
    appBar: AppBar(
    leading: IconButton( onPressed: (){ Navigator. pop(context); }, icon:Icon(Icons. arrow_back_ios)), //replace with our own icon data. )
    title: Text(
    " Temple Places ",
    style: TextStyle(
    color: Colors.black,
    fontSize: 30,
    fontWeight: FontWeight.normal,
    ),
    ),
    backgroundColor: Color(0xffAD8B73),
    ),
    bottomNavigationBar: BottomNavigationBar(
    backgroundColor: Color(0xffAD8B73),
    items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Icon(Icons.notifications),
    label: 'Notifications',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Profile',
    ),
    ],
    currentIndex: 1,
    fixedColor: Colors.black,
    selectedFontSize: 20,
    ),
    body: ListView(



        padding: EdgeInsets.all(16),
      children: [

        for (int i = 0; i < 10; i++)
          Container(
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: NetworkImage(
                      'https://cdn.britannica.com/88/124388-050-EFAFCE59/Hieroglyphs-temple-Ombos-Egypt.jpg',
                    ),
                    child: InkWell(
                      onTap: () {},
                    ),
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'The Egyption Museum',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 45,
                    ),
                  ),
                ],
              ),
            ),
          ),

      ],

    ),
    );
  }






}