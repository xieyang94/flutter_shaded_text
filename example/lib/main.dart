import 'package:flutter/material.dart';
import 'package:flutter_shaded_text/flutter_shaded_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shade_text'),
      ),
      body: Center(
        child: ShadedText(
          text: 'Shaded Text',
          textColor: Color(0xffff0000),
          shadeColor: Color(0xff00ff00),
          shadeBuilder: (BuildContext context, String text, Color color) =>
              Container(
            child: Text(
              text,
              style: TextStyle(color: color),
            ),
          ),
        ),
      ),
    );
  }
}
