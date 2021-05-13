//(login page linked by the 2nd navigator bar icon):
//Class name is : LoginScreen
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constans.dart';
class LoginScreen extends StatefulWidget {
 @override
 _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
 bool _rememberMe = false;
 Widget _buildEmailTF() {
 return Column(
 crossAxisAlignment: CrossAxisAlignment.start,
 children: <Widget>[
 Text(
 'Email',
 /* style: TextStyle(
 color: Colors.white,
 //height: 50.0,
 fontWeight: FontWeight.bold,
 fontSize: 20.0,
 ),*/
 style: kLabelStyle,
 ),
 SizedBox(
 height: 5.0,
 ),
 /*Container(
 alignment: Alignment.centerLeft,
 decoration: kBoxDecorationStyle,
 height: 60.0,
 child: TextField(
 keyboardType: TextInputType.emailAddress,
 style: TextStyle(
 color: Colors.white,
 fontFamily: 'OpenSans',
 ),
 decoration: InputDecoration(
 border: InputBorder.none,
 contentPadding: EdgeInsets.only(top: 14.0),
 prefixIcon: Icon(
 Icons.email,
 color: Colors.white,
 ),
 hintText: 'Enter your Email',
 hintStyle: kHintTextStyle,
 ),
 ),
 ),*/
 Container(
 alignment: Alignment.centerLeft,
 height: 60.0,
 padding: EdgeInsets.all(10),
 child: TextField(
 keyboardType: TextInputType.emailAddress,
 style: TextStyle(color: Colors.white),
 decoration: InputDecoration(
 border: OutlineInputBorder(
 borderSide: BorderSide(color: Colors.cyan),
 ),
 labelText: 'Email',
 contentPadding: EdgeInsets.only(top: 14.0),
 prefixIcon: Icon(
 Icons.email,
 color: Colors.white,
 ),
 hintText: "Enter your Email",
 ),
 ),
 ),
 ],
 );
 }
 Widget _buildPasswordTF() {
 return Column(
 crossAxisAlignment: CrossAxisAlignment.start,
 children: <Widget>[
 Text(
 'Password',
 /*style: TextStyle(
 color: Colors.white,
 //height: 50.0,
 fontWeight: FontWeight.bold,
 fontSize: 20.0,
 ),*/
 style: kLabelStyle,
 ),
 SizedBox(
 height: 5.0,
 ),
 Container(
 alignment: Alignment.centerLeft,
 //decoration: kBoxDecorationStyle,
 height: 60.0,
 padding: EdgeInsets.all(10),
 child: TextField(
 //keyboardType: TextInputType.password,
 obscureText: true,
 style: TextStyle(color: Colors.white),
 decoration: InputDecoration(
 border: OutlineInputBorder(
 borderSide: BorderSide(color: Colors.cyan),
 ),
 labelText: 'Password',
 contentPadding: EdgeInsets.only(top: 14.0),
 prefixIcon: Icon(
 Icons.lock,
 color: Colors.white,
 ),
 hintText: "Enter your Password",
 hintStyle: kHintTextStyle,
 ),
 ),
 ),
 ],
 );
 }
 Widget _buildForgetPasswordBtn() {
 return Container(
 alignment: Alignment.centerRight,
 child: FlatButton(
 onPressed: () => print('Forget Password Button Pressed'),
 padding: EdgeInsets.only(right: 0.0),
 //color: Colors.white,
 child: Text(
 'Forget Password?',
 //style: kLabelStyle,
 style: TextStyle(
 color: Colors.white,
 ),
 ),
 ),
 );
 }
 Widget _buildRememberMeCheckBox() {
 return Container(
 height: 20.0,
 child: Row(
 children: <Widget>[
 Theme(data: ThemeData(unselectedWidgetColor: Colors.white),
 child: Checkbox(
 value: _rememberMe,
 checkColor: Colors.green,
 activeColor: Colors.white,
 onChanged: (value) {
 setState(() {
 _rememberMe = value;
 });
 },
 ),
 ),
 Text(
 'Remember Me',
 style: kLabelStyle,
 )
 ],
 ));
 }
 Widget _buildLogInButton() {
 return Container(
 padding: EdgeInsets.symmetric(vertical: 25.0),
 width: double.infinity,
 child: RaisedButton(
 elevation: 5.0,
 onPressed: () => print('Login Button Pressed'),
 padding: EdgeInsets.all(15.0),
 shape: RoundedRectangleBorder(
 borderRadius: BorderRadius.circular(30.0),
 ),
 color: Colors.white,
 child: Text(
 'LOGIN',
 style: TextStyle(
 color: Color(0xFF527DAA),
 letterSpacing: 1.5,
 fontSize: 18.0,
 fontWeight: FontWeight.bold,
 fontFamily: 'OpenSans',
 ),
 ),
 ),
 );
 }
 Widget _buildSignInWithText() {return Column(
 children: <Widget>[
 Text(
 '- OR -',
 style: TextStyle(
 color: Colors.white,
 fontWeight: FontWeight.w400,
 ),
 ),
 SizedBox(height: 5.0),
 Text(
 'Sign in with',
 style: kLabelStyle,
 ),
 ],
 );
 }
 Widget _buildSocialBtn(Function onTap, AssetImage logo) {
 return GestureDetector(
 onTap: onTap,
 child: Container(
 height: 60.0,
 width: 60.0,
 decoration: BoxDecoration(
 shape: BoxShape.circle,
 color: Colors.white,
 boxShadow: [
 BoxShadow(
 color: Colors.black26,
 offset: Offset(0, 2),
 blurRadius: 6.0,
 ),
 ],
 image: DecorationImage(
 image: logo,
 ),
 ),
 ),
 );
 }
 Widget _buildSocialBtnRow() {
 return Padding(
 padding: EdgeInsets.symmetric(vertical: 30.0),
 child: Row(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: <Widget>[
 _buildSocialBtn(
 () => print('Login with Facebook'),
 AssetImage(
 'images/facebook.png',
 ),
 ),
 _buildSocialBtn(
 () => print('Login with Google'),
 AssetImage(
 'images/google.png',
 ),
 ),
 ],
 ),
 );
 }
 Widget _buildSignupBtn() {
 return GestureDetector(
 onTap: () => print('Sign Up Button Pressed'),
 child: RichText(
 text: TextSpan(
 children: [
 TextSpan(
 text: 'Don\'t have an Account? ',
 style: TextStyle(
 color: Colors.white,
 fontSize: 18.0,
 fontWeight: FontWeight.w400,
 ),
 ),
 TextSpan(
 text: 'Sign Up',
 style: TextStyle(
 color: Colors.white,
 fontSize: 18.0,
 fontWeight: FontWeight.bold,
 ),
 ),
 ],
 ),
 ),
 );
 }
 @override Widget build(BuildContext context) {
 return Scaffold(
 body: AnnotatedRegion<SystemUiOverlayStyle>(
 value: SystemUiOverlayStyle.light,
 child: GestureDetector(
 onTap: () => FocusScope.of(context).unfocus(),
 child: Stack(
 children: <Widget>[
 Container(
 height: double.infinity,
 width: double.infinity,
 decoration: BoxDecoration(
 gradient: LinearGradient(
 begin: Alignment.topCenter,
 end: Alignment.bottomCenter,
 colors: [
 Color(0xFFBBDEFB),
 Color(0xFF90CAF9),
 // Color(0xFF42A5F5),
Color(0xFF1E88E5),
 Color(0xFF1976D2),
 ],
 stops: [0.1, 0.4, 0.7, 0.9],
 ),
 ),
 ),
 Container(
 height: double.infinity,
 child: SingleChildScrollView(
 physics: AlwaysScrollableScrollPhysics(),
 padding: EdgeInsets.symmetric(
 horizontal: 40.0,
 vertical: 120.0,
 ),
 child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: <Widget>[
 Text("Sign in",
 style: TextStyle(
 color: Colors.white,
 fontFamily: 'OpenSans',
 fontSize: 30.0,
 fontWeight: FontWeight.bold,
 )),
 SizedBox(
 height: 5.0,
 ),
 _buildEmailTF(),
 SizedBox(
 height: 10.0,
 ),
_buildPasswordTF(),
_buildForgetPasswordBtn(),
_buildRememberMeCheckBox(),
_buildLogInButton(),
_buildSignInWithText(),
_buildSocialBtnRow(),
_buildSignupBtn(),
 ],
 ),
 ),
 )
 ],
 ),
 ),
 ),
 );
 }
}