import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBestPlayersScroll extends StatelessWidget
{
  const CustomBestPlayersScroll({super.key, });

  @override
  Widget build(BuildContext context)
  {
   return SizedBox(
  height: MediaQuery.of(context).size.height * 0.18,
  child: ListView.builder
  (
    shrinkWrap: true,
    reverse: true,
    itemCount: 6,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index)
    {
      return Padding(
        padding: EdgeInsets.only(right: 15),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [      
            Image.asset('assets/images/player.png', fit: BoxFit.cover, ),
            SizedBox(height: 6,),
            Text('عبدالله سالم', style: TextStyle(fontSize: 14.sp, color: Colors.black,),
            textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    },
  ),
);
  }
}
