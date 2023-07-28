
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../DImensions/dimensions.dart';
import 'SmallText.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  Color? color;
  double ?size;


   ExpandableTextWidget({Key? key, required this.text,
  this.color,this.size}): super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    updateText();
  }

  void updateText() {
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()); // Remove the +1 here
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(color: Dimensions.paraColor, size: Dimensions.font16, text: firstHalf)
          : Column(
        children: [
          SmallText(
            height: 1.7,
            color: Dimensions.paraColor,
            size: Dimensions.font16,
            text: hiddenText ? (firstHalf + "...") : (firstHalf + secondHalf),
          ),
          InkWell(
            onTap: () {
              setState(() {
                hiddenText = !hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(
                  text: hiddenText ? "Show More" : "Show Less",
                  color: Colors.blueGrey,
                ),
                Icon(hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up, color: Colors.blueGrey),
              ],
            ),
          )
        ],
      ),
    );
  }
}
