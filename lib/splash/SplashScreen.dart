import 'dart:async';
import 'package:cannsult/UI/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashState();
  }

}

class SplashState extends State<Splash>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SplashScreen(

        seconds: 3,
        navigateAfterSeconds: new LoginPage(),
       /* title: new Text('SplashScreen',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),),*/
        image: new Image.network('https://static.wixstatic.com/media/75b20d_999551f73608485287505a71e463b7fd~mv2.png/v1/fill/w_413,h_108,al_c,usm_0.66_1.00_0.01/CannsultLogo.png',
        alignment: Alignment.center,),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Flutter Egypt"),
        loaderColor: Colors.red
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async{
    Timer(Duration(seconds: 3), nextScreen);
  }

  void nextScreen(){

  }

}