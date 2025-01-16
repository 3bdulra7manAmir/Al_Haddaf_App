import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomShowAll extends StatelessWidget
{
  const CustomShowAll({super.key, required this.changeableText});

  final String changeableText;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children:
        [
          SvgPicture.asset('assets/images/svg/arrow.svg'),
          GestureDetector(onTap: (){},
            child: Text('عرض الكل', style: TextStyle(fontSize: 14.sp, color: Color.fromRGBO(149, 149, 149, 1)),)), //HERE
          Spacer(),
          Text(changeableText, style: TextStyle(fontSize: 18.sp,),), //HERE
        ],
      ),
    );
  }
}