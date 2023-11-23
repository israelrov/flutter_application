import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/modelweather.dart';
import 'package:flutter_application_1/srvices/apiserviceweather.dart';

class class_Weather extends StatefulWidget {
  final String city;
  bool run = false;

  class_Weather({required this.city});

  @override
  State<class_Weather> createState() => _class_flightsState();
}

class _class_flightsState extends State<class_Weather> {
  late WeatherModel answer;



  send_api_Weather() async {
    await RapidApiService2.getapi2()
        .getweather(widget.city)
        .then((value) => answer = value);

        setState(() {
          widget.run=true;
        });
  }

  @override
  void initState() {
    super.initState();
    send_api_Weather();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.run == true) {
      return const Placeholder(
          child: Column(children: [
        Text(
          "pppppppppppppng to the exciting landscapes",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]));
    }
    return Text("מצטערים השרות לא זמין כרגע, בבקשה נסה במועד מאוחר יותר");
  }
}
