import 'package:flutter/material.dart';
import 'package:job_application_project/Btechpage.dart';

//import 'cookie_det.dart';
class Technical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 5.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 15.0,
              height: MediaQuery.of(context).size.height - 20.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard(
                      'Engineering', '\Btech', '', false, false, context),
                  _buildCard('Management', '\BCA', '', true, false, context),
                  _buildCard('Management', '\BBA', '', false, true, context),
                  _buildCard(
                      'Security', '\Cyber Security', '', false, false, context),
                  /* _buildCard('Engineering', '\Electrical & Electronics', '',
 false, false, context),
 _buildCard(
 'Engineering', '\Mechanical', '', false, false, context),
 _buildCard('Engineering', '\Electronics & Communication', '',
 false, false, context),
 _buildCard('Engineering', '\Aeronautical', '', false, false,
 context),*/
                ],
              )),
          SizedBox(height: 5.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 2.0, bottom: 2.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BtechPage()));
              // assetPath: imgPath,
              //cookieprice: price,
              //cookiename: name)));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.cyan),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        /* children: [isFavorite
 ? Icon(Icons.favorite, color: Color(0xFFEF7532))
 : Icon(Icons.favorite_border,
 color: Color(0xFFEF7532))
 ]*/
                      )),
                  Hero(
                      tag: imgPath,
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        /* decoration: BoxDecoration(
 image: DecorationImage(
 image: AssetImage(imgPath),
 fit: BoxFit.contain
 )
)*/
                      )),
                  SizedBox(height: 5.0),
                  Text(price,
                      style: TextStyle(
                          color: Color(0xFFCC8053),
                          //fontFamily: 'Varela',
                          fontSize: 20.0)),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          //fontFamily: 'Varela',
                          fontSize: 14.0)),
                  /* Padding(
 padding: EdgeInsets.all(8.0),
 child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
 Padding(
 padding: EdgeInsets.only(left: 5.0, right: 5.0),
 child: Row(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
 if (!added) ...[
 Icon(Icons.shopping_basket,
 color: Color(0xFFD17E50), size: 12.0),
 Text('Add to cart',
 style: TextStyle(
 fontFamily: 'Varela',
color: Color(0xFFD17E50),
fontSize: 12.0))
 ],
 if (added) ...[
 Icon(Icons.remove_circle_outline,
 color: Color(0xFFD17E50), size: 12.0),
 Text('Add to cart',
 style: TextStyle(
 fontFamily: 'Varela',
color: Color(0xFFD17E50),
fontSize: 12.0))
 ],
 if (added) ...[Icon(Icons.remove_circle_outline,
 color: Color(0xFFD17E50), size: 12.0),
 Text('3',
 style: TextStyle(
 fontFamily: 'Varela',
color: Color(0xFFD17E50),
 fontWeight: FontWeight.bold,
 fontSize: 12.0)),
 Icon(Icons.add_circle_outline,
 color: Color(0xFFD17E50), size: 12.0),
 ]
 ]))*/
                ]))));
  }
}
