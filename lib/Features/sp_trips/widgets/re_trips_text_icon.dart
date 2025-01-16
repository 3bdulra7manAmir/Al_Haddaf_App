
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ReTripsTextAndIcon extends StatelessWidget
{
  const ReTripsTextAndIcon({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.04,
        right: MediaQuery.of(context).size.width * 0.05,
        left: MediaQuery.of(context).size.width * 0.05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
        [
          GestureDetector(
            onTap: () {print('Filter Has Been Pressed\tFilter Has Been Pressed\t\tFilter Has Been Pressed');},
            child: SvgPicture.asset('assets/images/svg/Filter.svg')),
          Text("رحلات رياضية", style: TextStyle(fontSize: 14.sp),),
        ]
      ),
    );
  }
}
