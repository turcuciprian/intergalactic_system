import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepperButton extends StatefulWidget {
  final int number;
  final Color color;
  StepperButton({Key key, this.number, this.color})
      : super(key: key);
  StepperButtonState createState() => StepperButtonState();
}

class StepperButtonState extends State<StepperButton> {
  @override
  Widget build(BuildContext context) {
    // List<Widget> fullStepperContent = widget.stepsContent.map()
    return Container(
      width: 30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FlatButton(
            color: widget.color,
            textColor: Colors.white,
            disabledColor: Colors.green,
            disabledTextColor: Colors.white,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              /*..nothing..*/
            },
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30)),
            child: Text(
              widget.number.toString(),
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
