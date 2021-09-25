import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

//pub.dev
void main() => runApp(MyApp());
q
class MyApp extends StatefulWidget {
  // MyApp({required Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Analog Clock App'),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage("image/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: AnalogClock(
                decoration: BoxDecoration(
                    border: Border.all(width: 3.0, color: Colors.black),
                    color: Colors.black,
                    shape: BoxShape.circle),
                width: 200.0,
                isLive: true,
                hourHandColor: Colors.white,
                minuteHandColor: Colors.white,
                showSecondHand: true,
                textScaleFactor: 1.5,
                showTicks: true,
                digitalClockColor: Colors.white,
                datetime: DateTime(2021, 26, 9, 4, 23, 0),
              ),
            ),
          ),
        ),
      );
}
