import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepperButton extends StatefulWidget {
  final int number;
  StepperButton({Key key, this.number}) : super(key: key);
  StepperButtonState createState() => StepperButtonState();
}

class StepperButtonState extends State<StepperButton> {
  @override
  Widget build(BuildContext context) {
    // List<Widget> fullStepperContent = widget.stepsContent.map()
    return Container(
      width: 30,
      child:FlatButton(
  color: Colors.red,
  textColor: Colors.white,
  disabledColor: Colors.green,
  disabledTextColor: Colors.white,
  padding: EdgeInsets.all(8.0),
  splashColor: Colors.blueAccent,
  onPressed: () {
    /*...*/
  },
  shape:
            RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
  child: Text(
    widget.number.toString(),
    style: TextStyle(fontSize: 14.0),
  ),
),
    );
  }
}
