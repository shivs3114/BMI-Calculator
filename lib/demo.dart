import 'package:flutter/material.dart';
import 'calculator.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController h = new TextEditingController();
  final TextEditingController w = new TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI Calculator',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0),
            ),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: SafeArea(
          child: Container(
            child: Column(children: <Widget>[
              SizedBox(
                height: 70,
              ),
              Text(
                'Weight',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: w,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.height),
                    hintText: '0.0(in kg)'),
              ),
              //Text('cm'),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Height',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),

              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: h,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    icon: Icon(Icons.line_weight),
                    border:
                        OutlineInputBorder(//{BorderSide=const BorderSide()}),
                            ),
                    hintText: '0.0(in m)'),
              ),
              SizedBox(height: 30.0),

              ElevatedButton(
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: Calculate),
              Text(
                result.toStringAsFixed(2),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
              // Text('Made by Shivangi')
            ]),
          ),
        ),
      ),
    );
  }

  void Calculate() {
    double height = double.parse(h.text);
    double weight = double.parse(w.text);
    double bmi = (weight / height);
    result = bmi;
    setState(() {});

    /*if (bmi >= 25) {
      return 'Obese';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }*/
  }
}
