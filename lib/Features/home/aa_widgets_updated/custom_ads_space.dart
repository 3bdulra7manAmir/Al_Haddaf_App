import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAdsScroll extends StatelessWidget
{
  const CustomAdsScroll({super.key, });

  @override
  Widget build(BuildContext context)
  {
   return SizedBox(
  height: MediaQuery.of(context).size.height * 0.12, //HERE
  child: ListView.builder(
    reverse: true,
    itemCount: 4,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index)
    {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Stack(
          alignment: Alignment.center,
          children:
          [      
            Image.asset('assets/images/png/AdsSection.png', width: MediaQuery.of(context).size.width * 0.9, fit: BoxFit.cover,),
            Center(
              child: Text(
                'مساحة إعلانية', style: TextStyle( fontSize: 19.sp, color: Colors.white, ), //HERE
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
    },
  ),
);
  }
}
