import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygetx/screens/register.dart';

import '../data_service.dart';
import '../models.dart';
import 'home.dart';
import 'music.dart';

class Weather extends StatelessWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Weather"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.limeAccent,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 70, 20, 70),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Hello, How are you !!",
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                thickness: 2,
                color: Colors.blueGrey,
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Text(
                        "Home",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Get.to(Home());
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 0.5,
                color: Colors.black38,
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Text(
                        "See Weather",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Get.to(Weather());
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 0.5,
                color: Colors.black38,
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Text(
                        "Listen Music",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Get.to(Music());
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 0.5,
                color: Colors.black38,
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Text(
                        "Log Out",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Get.offAll(Register());
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: MyWeatherApp(),
    );
  }
}

class MyWeatherApp extends StatefulWidget {
  @override
  State<MyWeatherApp> createState() => _MyWeatherAppState();
}

class _MyWeatherAppState extends State<MyWeatherApp> {
  final _cityTextController = TextEditingController();
  final _dataService = DataService();

  WeatherResponse? _response;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text("Weather unit is shown in Fahrenheit",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),)
          ),

          if (_response != null)

            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Image.network(_response!.iconUrl),
                  Text(
                    '${_response!.tempInfo.temperature}°',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(_response!.weatherInfo.description)
                ],
              ),
            ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: SizedBox(
              width: 150,
              child: TextField(
                  controller: _cityTextController,
                  decoration: InputDecoration(labelText: 'Enter City'),
                  textAlign: TextAlign.center),
            ),
          ),
          ElevatedButton(onPressed: _search, child: Text('Search'))
        ],
      ),
    );
  }

  void _search() async {
    final response = await _dataService.getWeather(_cityTextController.text);
    setState(() => _response = response);
  }
}
