import 'package:flutter/material.dart';
import '2Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second', arguments: Colors.red);
              },
              child: Text('Red'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second', arguments: Colors.yellow);
              },
              child: Text('Yellow'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second', arguments: Colors.blue);
              },
              child: Text('Blue'),
            ),
          ],
        ),
      ),
    );
  }
}
