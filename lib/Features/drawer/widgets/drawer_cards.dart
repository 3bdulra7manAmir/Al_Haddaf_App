import 'package:flutter/material.dart';

class CustomInDrawerButton extends StatelessWidget
{
  const CustomInDrawerButton({super.key, this.containerWidth, this.containerHeight,
  this.boxDecoration, this.cardIcon, required this.widgetText, this.textStyle});

  final double? containerWidth;
  final double? containerHeight;
  final BoxDecoration? boxDecoration;
  final IconData? cardIcon;
  final String widgetText;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(width: containerWidth, height: containerHeight,
          decoration: boxDecoration,
          child: Row(
            children:
            [
              SizedBox(width: 5,),
              Icon(cardIcon, color: Colors.white,),
              SizedBox(width: 8,),
              Text(widgetText, style: textStyle ?? TextStyle(color: Colors.white), textAlign: TextAlign.right, textDirection: TextDirection.rtl,)
            ],
            ),
      )),
    );
  }
}


