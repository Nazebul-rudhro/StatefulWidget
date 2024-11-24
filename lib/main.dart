import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Stateful Widget',
    home: Scaffold(
      body: App2(),
    ),
  ));
}

class App2 extends StatefulWidget {
  const App2({super.key});

  @override
  _App2State createState() => _App2State();
}

class _App2State extends State<App2> {
  String txt = ""; // Variable to store text

  @override
  void initState() {
    super.initState();
    txt = "Hello Stateful Widget"; // Initialize text
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the current text
            Text(txt, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            // Button to update the text
            TextButton(
              onPressed: () {
                // Update the text when button is pressed
                setState(() {
                  txt = "Text has been changed!";
                });
                print("onPressed - Text has been changed!");
              },
              child: Text("Change"),
            ),
          ],
        ),
      ),
    );
  }
}
