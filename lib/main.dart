import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App DOJO',
      theme: ThemeData(
        primaryColor: Color(0xFF641220),
        accentColor: const Color(0xFF7979), // 056CF2
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: ''),
      debugShowCheckedModeBanner: false,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          color: Theme.of(context).primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.headset_mic),
              Text(
                'DOJO Flutter',
                style: Theme.of(context).textTheme.headline4,
              ),
              TextButton(onPressed: () {}, child: Text('Login')),
              TextButton(onPressed: () {}, child: Text('Registrar'))
            ],
          ),
        ),
    );
  }
}
