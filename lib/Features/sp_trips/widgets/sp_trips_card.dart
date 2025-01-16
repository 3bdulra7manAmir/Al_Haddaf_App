import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpTripsView extends StatelessWidget
{
  const SpTripsView({super.key});

  @override
  Widget build(BuildContext context)
  {
    // Padding The OutSized Card itself
    return Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.02,
          right: MediaQuery.of(context).size.width * 0.05,
          left: MediaQuery.of(context).size.width * 0.05,
        ),
        
        //STACK BEGINING
        child: Stack(
          //alignment: Alignment.centerRight,
          children:
          [
            // background GREEN color
            Container(
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                color: Color.fromARGB(255, 224, 230, 233),
              ),

              //Padding The Content itself Inside of the Card _ ALL The Content PADDING
              child: Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.07,
                  top: MediaQuery.of(context).size.height * 0.02,
                ),

                //Column That Holds ALL The Content Except The Image _ The image is inside the Stack
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:
                  [
                    Text("الجبلين", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold, color: Color(0xff0e4d3a)),),
            
                    SizedBox(height: 10,),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:
                      [
                        Text("المملكة العربية السعودية", style: TextStyle(fontSize: 14.sp), textDirection: TextDirection.rtl,),
                        SizedBox(width: 10,),
                        Icon(Icons.location_on, color: Color(0xff0e4d3a), size: 17,),
                      ],
                    ),
            
                    SizedBox(height: 10,),
            
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:
                      [
                        Text("شامل(الاقامة - الطيران - المعايشة بالنادي)", style: TextStyle(fontSize: 14.sp)),
                        SizedBox(width: 10,),
                        Icon(Icons.circle, color: Color(0xff0e4d3a), size: 15, textDirection: TextDirection.rtl,),
                      ],
                    ),
            
                    SizedBox(height: 10,),
            
                    GestureDetector(
                      onTap: () {print('Buy Container Has Been Pressed\tBuy Container Has Been Pressed\t\tBuy Container Has Been Pressed');},
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.042,
                        width: MediaQuery.of(context).size.width * 0.24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.r)),
                          color: Color(0xffFFB900),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Text("900", style: TextStyle(color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.bold),),
                            SizedBox(width: 10,),
                            SvgPicture.asset('assets/images/svg/Dollar.svg', height: 20,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            

            //Image Positioned Inside The Stack and it is OutSide of the Column
            Positioned(
              left: MediaQuery.of(context).size.width * 0.05,
              top: MediaQuery.of(context).size.height * 0.015,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(35.r)),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.17,
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/png/Wolves.png',),
                      fit: BoxFit.none,
                    ),
                  ), //child: SvgPicture.asset('assets/images/svg/Wolves.svg')),
                ),  
              ),
            ),
          ],
        ),
      );
  }
}