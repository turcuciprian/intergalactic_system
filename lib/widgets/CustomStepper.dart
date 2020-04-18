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
    int step = 1;
    Widget customDivider = Expanded(
      child: Divider(height: 1.0, color: Colors.grey, thickness: 1.0),
    );
    List<Widget> fullStepperContent = [];
    widget.stepsContent.asMap().forEach((index, item) {
      Color dynamicColor = step > index + 1 ? Colors.green : Colors.red;
      dynamicColor = index + 1 <= step ? dynamicColor : Colors.grey;
      // add divider before each new item that's not the first one
      if (index != 0) {
        fullStepperContent.add(customDivider);
      }
      // add a stepper button
      fullStepperContent.add(StepperButton(
        color: dynamicColor,
        number: index + 1,
      ));
    });
    return Padding(
      padding: EdgeInsets.only(top: 20.0, left: 20, right: 20),
      child: Column(children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: fullStepperContent,
          ),
        ),
        Expanded(
          child: Container(
            child: widget.stepsContent[step - 1],
          ),
        )
      ]),
    );
  }
}
