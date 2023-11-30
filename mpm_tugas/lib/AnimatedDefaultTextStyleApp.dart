import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleApp extends State {
  var _warna = Colors.yellow;
  var _ukuranTeks = 20.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: (Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Metode Pemrograman Modern Dart Programming"),
                    Text("Qory Wiljanova"),
                    Text("21060120140110"),
                  ],
                ),
              ),
              AnimatedDefaultTextStyle(
                  child: Container(
                    child: Text('Teknik Elektro Undip'),
                  ),
                  style: TextStyle(color: _warna, fontSize: _ukuranTeks),
                  duration: const Duration(seconds: 1)),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _warna = Colors.green;
                      _ukuranTeks = 20.0;
                    });
                  },
                  child: Text("Animation Running Out"))
            ],
          ),
        )),
      ),
    );
  }
}
