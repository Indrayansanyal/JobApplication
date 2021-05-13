import 'package:flutter/material.dart';
import 'package:job_application_project/General.dart';
import 'package:job_application_project/Medical.dart';
import 'package:job_application_project/Technical.dart';
//import 'package:my_demo/stream/Medical.dart';
//import 'package:my_demo/stream/general.dart';
//import 'package:my_demo/stream/tecnical.dart';
//import 'button_bar.dart';
//import 'Btechpage.dart';
class Category extends StatefulWidget {
 @override
 _CategoryState createState() => _CategoryState();
}
class _CategoryState extends State<Category>
 with SingleTickerProviderStateMixin {
 TabController _tabController;
 @override
 void initState() {
 super.initState();
 _tabController = TabController(length: 3, vsync: this);
 }
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 backgroundColor: Colors.cyan,
 elevation: 5.0,
 centerTitle: true,
 leading: IconButton(
 icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
 onPressed: () {},
 ),
 title: Text('Stream',
 style: TextStyle(
 //fontFamily: 'Varela',
 fontSize: 20.0,
 //backgroundColor: Colors.cyan,
 color: Color(0xFF545D68),
 //decorationColor: Colors.cyan,
 )),
 actions: <Widget>[
 IconButton( icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
 onPressed: () {},
 ),
 ],
 ),
 body: ListView(
 padding: EdgeInsets.only(left: 20.0),
 children: <Widget>[
 SizedBox(height: 15.0),
 Text('Categories',
 style: TextStyle(
 fontFamily: 'Varela',
 fontSize: 42.0,
 fontWeight: FontWeight.bold)),
 SizedBox(height: 15.0),
 TabBar(
 controller: _tabController,
 indicatorColor: Colors.transparent,
 labelColor: Color(0xFFC88D67),
 isScrollable: true,
 labelPadding: EdgeInsets.only(right: 45.0),
 unselectedLabelColor: Color(0xFFCDCDCD),
 tabs: [
 Tab(
 child: Text('General',
 style: TextStyle(
 //fontFamily: 'Varela',
fontSize: 21.0,
 )),
 ),
 Tab(
 child: Text('Technical',
 style: TextStyle(
 //fontFamily: 'Varela',
fontSize: 21.0,
 )),
 ),
 Tab(
 child: Text('Medical',
 style: TextStyle(
 //fontFamily: 'Varela',
fontSize: 21.0,
 )),
 ),
 ]),
 Container(
 height: MediaQuery.of(context).size.height - 50.0,
 width: double.infinity,
 child: TabBarView(controller: _tabController, children: [
 General(),
 Technical(),
 Medical(),
 ]))
 ],
 ),
 /* floatingActionButton: FloatingActionButton(
 onPressed: () {},
 backgroundColor: Color(0xFFF17532),
 child: Icon(Icons.fastfood),
 ),
 floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
 //bottomNavigationBar: BottomBar(),*/
 );
 }
}