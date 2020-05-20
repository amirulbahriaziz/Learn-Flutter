import 'package:flutter/material.dart';
import 'package:learnflutter/models/User.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(title: 'Flutter Demo Home Page'),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Step 1 : Basic
  // Future<User> createUser(String name, String job) async {
  //   final String urlCreateUser = "https://reqres.in/api/users";
  //   http.post(urlCreateUser, body: {"name": name, "job": job});
  // }

  // Step 2 : Since we need to save the response, we put in the variable.
  Future<User> createUser(String name, String job) async {
    final String urlCreateUser = "https://reqres.in/api/users";

    final response =
        await http.post(urlCreateUser, body: {"name": name, "job": job});

    if (response.statusCode == 201) {
      final String responseString = response.body;

      return userFromJson(responseString);
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // Column is a
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
