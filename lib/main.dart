import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Perspective',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Quick Perspective'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Today I am grateful for...'),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width * .9,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                child: Form(
                  key: _formKey,
                  child: Column(children: <Widget>[
                    TextFormField(),
                    TextFormField(),
                    TextFormField()
                  ]),
                ),
              )
            ]),
      ),
    );
  }
}
