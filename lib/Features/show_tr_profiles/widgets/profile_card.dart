import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileCard extends StatelessWidget
{
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    //CARD SIZE CONTAINER Which is SIZEDBOX
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.185,
    
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r),),
    
        child: Stack(
          alignment: Alignment.topCenter,
          children:
          [

            //COACH IMAGE PADDING FROM THE TOP
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
              child: Image.asset("assets/images/png/Coach.png",)
            ),
    

            //EG FLAG & Text Position Inside The STACK
            Positioned(
              top: MediaQuery.of(context).size.height * 0.132,
              left: MediaQuery.of(context).size.width * 0.04, //TEXT AND FLAG MOVER TO the Left OR the Right

              child: Column(
                children:
                [
                  Image.asset("assets/images/png/EG_Flag.png", ),

                  SizedBox(width: 4),

                  Text('10 سنوات خبرة', style: TextStyle(fontSize: 14.sp) ,textDirection: TextDirection.rtl,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}