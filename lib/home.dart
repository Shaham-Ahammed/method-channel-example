import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

// the method channel of kotlin side is written in following location ->
// android -> app -> src -> main -> kotlin -> MainActivity.kt
// always open android studio while writing kotlin code
//the channel name must be same in kotlin and flutter

class _HomeState extends State<Home> {
  var channel = MethodChannel("uniqueName");
  showToast() {
    channel.invokeMethod("showToast");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
            child: ElevatedButton(
                onPressed: () {
                  showToast();
                },
                child: Text("show toast")),
          )),
    );
  }
}
