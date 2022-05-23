import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:test_flutter/widgetlist/expanded_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print(window.physicalSize.width);
    // print(MediaQuery.of(context).size.width);
    return MaterialApp(
        title: 'My Quiz App',
        theme: ThemeData(
          primarySwatch: Colors.red,
          primaryColor: Colors.amberAccent,
        ),
        home: const HomeWidget());
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int testnum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('alsdjfliasjdf'),
      ),
      body: Center(
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                ),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExpandedWidgetTest()),
                        );
                      },
                      child: Text('Expanded Widget'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('asldjad'),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NaviSecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 70,
              width: 250,
              decoration: BoxDecoration(color: Colors.indigoAccent),
              alignment: Alignment(0, 0),
              child: Text(
                "This is the Second Screen",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            RaisedButton(
              child: Text("Go back to First Screen"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}



  




// boxWidget() {
//   return Container(
//     // height: 30,
//     // width: 50,
//     decoration: BoxDecoration(
//       color: Colors.deepOrangeAccent,
//       border: Border.all(
//         color: Colors.blueAccent,
//         width: 1,
//       ),
//     ),
//     alignment: Alignment.center,
//     child: const Text('Box'),
//   );
// }
