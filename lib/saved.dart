import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mygetx/screens/home.dart';
import 'package:mygetx/screens/music.dart';
import 'package:mygetx/screens/register.dart';
import 'package:mygetx/screens/weather.dart';

class Saved extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your data"),
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
      body: savedData(),
    );
  }
}

class savedData extends StatelessWidget {
  final userdata = GetStorage();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(7, 10, 7, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 450,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 7,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 7, 18, 7),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Your details",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    fontFamily: "Roboto"),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Name :      ",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          fontFamily: "Roboto"),
                                    ),
                                    Text(
                                      "${userdata.read('username')}",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          fontFamily: "Roboto"),
                                    ),
                                  ],
                                ),//name
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Contact number :      ",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          fontFamily: "Roboto"),
                                    ),
                                    Text(
                                      "${userdata.read('usernum')}",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          fontFamily: "Roboto"),
                                    ),
                                  ],
                                ),//Phone no.
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "What are you currently doing :      ",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          fontFamily: "Roboto"),
                                    ),
                                    Text(
                                      "${userdata.read('userwork')}",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          fontFamily: "Roboto"),
                                    ),
                                  ],
                                ),//work
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Your email :      ",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          fontFamily: "Roboto"),
                                    ),
                                    Text(
                                      "${userdata.read('useremail')}",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          fontFamily: "Roboto"),
                                    ),
                                  ],
                                ),//email
                               Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => Music());
                                  },
                                  child: Text(
                                    "Add New Data",
                                    style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


