import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NewHome extends StatefulWidget {
  @override
  _NewHomeState createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  List<String> carouselImages = [
    "https://th.bing.com/th/id/OIP.thcZxn7FI08A-LkjXhLnogHaE6?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/R5a882dc71c614fb7787c3f37fd877bdc?rik=9gDlfMAM%2fHBVBQ&riu"
        "=http%3a%2f%2fblog.radissonblu.com%2fwp-content%2fuploads%2f2015%2f03%2fBP1-EN-USABLMATwo-girls-window-shopping.-Mall-ofAmerica.jpg&ehk=ds9oXG5ULmW94AejM7LO8gIckWiK1X5HJz7ys%2feBlp8%3d&risl=&pid=ImgRaw",
    "https://th.bing.com/th/id/OIP.dsXdSnCXZrv0vILuRVKuXAHaE8?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/R011fc67c98204eedcef997f47cad263b?rik=tsuPw4bMIsq9VQ&riu=h"
        "ttp%3a%2f%2fwww.womendailymagazine.com%2fwp-content%2fuploads%2f2018%2f04%2fbudget-tipsfor-women-who-loveshopping.jpg&ehk=INnssbmzP8Xu8vgtQre%2fH74UCInPhktvuaAfnEzDrbA%3d&risl=&pid=ImgRaw",
    "https://th.bing.com/th/id/OIP.E3R5zwjoaBklFWgAtMQsrgHaED?pid=ImgDet&rs=1",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      appBar: AppBar(
        title: Text("My Product"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      //drawer: MyDrawer(),
      //
      body: ListView(
        shrinkWrap: true,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 10 / 5,
              autoPlay: true,
              viewportFraction: 0.95,
            ),
            items: carouselImages.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Image.network(
                      i,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          ),
          //horizontalProductsSlider(),
          // verticalProductSlider(),
        ],
      ),
    );
  }
}
