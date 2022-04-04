import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mygetx/screens/register.dart';
import '../saved.dart';
import 'home.dart';
import 'weather.dart';

class Music extends StatelessWidget {
  const Music({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Data"),
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
      body: Data(),
    );
  }
}

class Data extends StatelessWidget {

//Editing controllers
  final username_controller = TextEditingController();
  final usernum_controller = TextEditingController();
  final usergender_controller = TextEditingController();
  final userwork_controller = TextEditingController();
  final useremail_controller = TextEditingController();
  final usergrade_controller = TextEditingController();
  final userboard_controller = TextEditingController();

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
              height: 500,
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
                            "Your Profile",
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
                    TextFormField(
                      controller: username_controller,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Name',
                      ),
                    ), //Name
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: usernum_controller,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Contact number',
                      ),
                    ), //Phone no.
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: userwork_controller,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'What are you currently doing ?',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ), //Currently doing
                    TextFormField(
                      controller: useremail_controller,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Email id',
                      ),
                    ), //Email
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            String username = username_controller.text;
                            String usernum =
                                usernum_controller.text;
                            String usergender =
                                usergender_controller.text;
                            String userwork = userwork_controller.text;
                            String useremail = useremail_controller.text;
                            userdata.write('username', username);
                            userdata.write('usernum', usernum);
                            userdata.write('usergender', usergender);
                            userdata.write('userwork', userwork);
                            userdata.write('useremail', useremail);
                            Get.offAll(Saved());
                          },
                          child: Text(
                            "Save data",
                            style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
        ],
      ),
    ),
    ],
    ),
    );
  }
}


