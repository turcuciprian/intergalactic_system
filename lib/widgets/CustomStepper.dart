import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intergalactic_system/widgets/StepperButton.dart';

class CustomStepper extends StatefulWidget {
  final List<Widget> stepsContent;
  CustomStepper({Key key, this.stepsContent}) : super(key: key);
  CustomStepperState createState() => CustomStepperState();
}

class CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    Widget customDivider = Expanded(
      child: Divider(
          height: 1.0, color: Colors.grey, thickness: 1.0),
    );
    // List<Widget> fullStepperContent = widget.stepsContent.map()
    return Padding(
      padding: EdgeInsets.only(top: 20.0, left: 20, right: 20),
      child: Column(children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StepperButton(
                number: 1,
              ),
              customDivider,
              StepperButton(
                number: 2,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
