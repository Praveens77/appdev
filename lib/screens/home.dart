import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygetx/screens/register.dart';
import 'package:mygetx/screens/weather.dart';

import 'music.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome user !"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.limeAccent,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 70, 20, 70),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topCenter,
                child: Text("Hello, How are you !!",
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
              ),
              SizedBox(height: 30,),
              Divider(thickness: 2,
                color: Colors.blueGrey,),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Icon(Icons.arrow_forward, color: Colors.purple,),
                    SizedBox(width: 10,),
                    GestureDetector(
                      child: Text("Home",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),),
                      onTap: () {
                        Get.to(Home());
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(thickness: 0.5,
                color: Colors.black38,),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Icon(Icons.arrow_forward, color: Colors.purple,),
                    SizedBox(width: 10,),
                    GestureDetector(
                      child: Text("See Weather",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),),
                      onTap: () {
                        Get.to(Weather());
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(thickness: 0.5,
                color: Colors.black38,),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Icon(Icons.arrow_forward, color: Colors.purple,),
                    SizedBox(width: 10,),
                    GestureDetector(
                      child: Text("Add Data",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),),
                      onTap: () {
                        Get.to(Music());
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(thickness: 0.5,
                color: Colors.black38,),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Icon(Icons.arrow_forward, color: Colors.purple,),
                    SizedBox(width: 10,),
                    GestureDetector(
                      child: Text("Log Out",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),),
                      onTap: () {
                        Get.to(Register());
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: [
                //1
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.0),
                      image:DecorationImage(
                        image: AssetImage('images/thunderstorm-1768742_1920.jpg'),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: Center(
                    child: Text(
                      "See Weather",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
                //2
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.0),
                      image:DecorationImage(
                        image: AssetImage('images/abstract-1780378_1920.png'),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: Center(
                    child: Text(
                      "Add Data",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
                  ),
                ),
                //3
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.0),
                      image:DecorationImage(
                        image: AssetImage('images/inspiration-1514296_1920.jpg'),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: Center(
                    child: Text(
                      "Stay Inspired",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


