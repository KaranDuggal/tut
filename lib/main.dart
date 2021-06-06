import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Tutorial", home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Center(
                  child: Container(
                // color: Colors.green,
                width: 100,
                height: 100,
                child: Text('I am a box',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red,
                    gradient:
                        LinearGradient(colors: [Colors.red, Colors.yellow]),
                    // shape: BoxShape.circle
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(2.0, 5.0))
                    ]),
              )),
            ),
            Container(
              child: Center(
                  child: Container(
                // color: Colors.green,
                width: 100,
                height: 100,
                child: Text('I am a box',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red,
                    gradient:
                        LinearGradient(colors: [Colors.blue, Colors.grey]),
                    // shape: BoxShape.circle
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(2.0, 5.0))
                    ]),
              )),
            ),
            Container(
              child: Center(
                  child: Container(
                // color: Colors.green,
                width: 100,
                height: 100,
                child: Text('I am a box',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red,
                    gradient:
                        LinearGradient(colors: [Colors.purple, Colors.amberAccent]),
                    // shape: BoxShape.circle
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(2.0, 5.0))
                    ]),
              )),
            ),
          ],
        ));
  }
}
