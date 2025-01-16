import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomShowTrProfileTextWidget extends StatelessWidget
{
  const CustomShowTrProfileTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.05,
        right: MediaQuery.of(context).size.width * 0.05,
      ),
            
      child: Align(
        alignment: Alignment.centerRight,
        child: Text("عرض ملفات المدربين", style: TextStyle(fontSize: 14.sp), textAlign: TextAlign.start, textDirection: TextDirection.rtl,))
    );
  }
}