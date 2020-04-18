import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intergalactic_system/data/Step.dart';
import 'package:intergalactic_system/widgets/StepperButton.dart';

class CustomStepper extends StatefulWidget {
  final List<CustomStep> stepsContent;
  CustomStepper({Key key, this.stepsContent}) : super(key: key);
  CustomStepperState createState() => CustomStepperState();
}

class CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    int step = 2;
    Widget customDivider = Expanded(
      child: Divider(height: 1.0, color: Colors.grey, thickness: 1.0),
    );
    Widget customDividerHidden = Expanded(
      child: Divider(height: 1.0, color: Colors.white, thickness: 1.0),
    );
    List<Widget> fullStepperContent = [];
    List<Widget> fullStepperContentText = [];
    widget.stepsContent.asMap().forEach((index, item) {
      Color dynamicColor = step > index + 1 ? Colors.green : Colors.red;
      dynamicColor = index + 1 <= step ? dynamicColor : Colors.grey;
      // add divider before each new item that's not the first one
      if (index != 0) {
        fullStepperContent.add(customDivider);
        fullStepperContentText.add(customDividerHidden);
      }
      if (index + 1 == step) {
        fullStepperContentText.add(
          Container(
            width: 70,
            child: Text(
              item.title,
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
      // add a stepper button
      fullStepperContent
          .add(StepperButton(color: dynamicColor, number: index + 1));
    });
    return Padding(
      padding: EdgeInsets.only(top: 20.0, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'LICITEAZA:',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          ),
          Container(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 20.0, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: fullStepperContent,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: fullStepperContentText,
              ),
            ]),
          ),
          Expanded(
            child: Container(
              child: widget.stepsContent[step - 1].content,
            ),
          )
        ],
      ),
    );
  }
}
