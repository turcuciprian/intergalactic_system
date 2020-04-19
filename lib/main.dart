import 'package:flutter/material.dart';
import 'package:intergalactic_system/widgets/CreazaDeviz.dart';
import 'package:intergalactic_system/widgets/CustomStepper.dart';
import 'package:intergalactic_system/data/Step.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abac IS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Abac Intergalactic System'),
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
    CustomStep page1 =
        CustomStep(title: "Creaza Deviz", content: CreazaDeviz());
    CustomStep page2 =
        CustomStep(title: "Stabileste Ora", content: Text('Test2 content'));
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: CustomStepper(stepsContent: [page1, page2]),
      ),
    );
  }
}
