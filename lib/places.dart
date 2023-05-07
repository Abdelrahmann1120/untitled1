
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Places extends StatefulWidget {
  const Places({Key? key}) : super(key: key);

  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0E5D4),
      appBar: AppBar(
        title: Text(
          "Amun",
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
        buildImageCard(),
      buildImageCard2(),
      Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6cGfuFPkt6-rvq-igMdro_6TU8v00ftmfxw&usqp=CAU',
              ),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('places3');
                  }
              ),
              height: 150,
              fit: BoxFit.cover,
            ),
            Text(
              'Temple Places',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 35,
              ),
            ),
          ],
        ),
      ),
      buildImageCard4(),
    ],
    ),

    );
  }

  Widget buildImageCard() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Ink.image(
          image: NetworkImage(
            'https://image.jimcdn.com/app/cms/image/transf/dimension=1040x10000:format=jpg/path/s2217cd0bb1220415/image/i3e72eddc44cdfeaa/version/1652918268/image.jpg',
          ),
          child: InkWell(
            onTap: () {

            },
          ),
          height: 150,
          fit: BoxFit.cover,
        ),
        Text(
          'Hiroghliphics Translation',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 35,
          ),
        ),
      ],
    ),
  );

  Widget buildImageCard2() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Ink.image(
          image: NetworkImage(
            'https://i.pngimg.me/thumb/f/720/5e8eb6d8e63b4c6ba120.jpg',
          ),
          child: InkWell(
            onTap: () {},
          ),
          height: 150,
          fit: BoxFit.cover,
        ),
        Text(
          'Statue Recognation ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 35,
          ),
        ),
      ],
    ),
  );

  /*Widget buildImageCard3() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Ink.image(
          image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6cGfuFPkt6-rvq-igMdro_6TU8v00ftmfxw&usqp=CAU',
          ),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('places3');
            }
          ),
          height: 150,
          fit: BoxFit.cover,
        ),
        Text(
          'Templet Places',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 35,
          ),
        ),
      ],
    ),
  );*/
  Widget buildImageCard4() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Ink.image(
          image: NetworkImage(
            'https://static.vecteezy.com/system/resources/previews/002/397/391/non_2x/tourist-take-photo-of-pyramids-in-egypt-vector.jpg',
          ),
          child: InkWell(
            onTap: () {},
          ),
          height: 150,
          fit: BoxFit.cover,
        ),
        Text(
          'Trips',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 35,
          ),
        ),
      ],
    ),
  );
}
