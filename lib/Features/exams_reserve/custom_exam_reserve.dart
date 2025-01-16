
import 'package:al_haddaf/Features/exams_reserve/widgets/custom_country_selector.dart';
import 'package:al_haddaf/Features/exams_reserve/widgets/custom_date_picker.dart';
import 'package:al_haddaf/Features/exams_reserve/widgets/custom_phone_no_selector.dart';
import 'package:al_haddaf/Features/home/aa_widgets_updated/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomExamReserve extends StatelessWidget
{
  CustomExamReserve({super.key});

  final TextEditingController fullNameController = TextEditingController();

  // @override
  // void dispose()
  // {
  //   fullNameController.dispose();
  //   DateInputFieldState.dateController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:
          [
            CustomAppBar(),

            SizedBox(height: 20,),

            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text('حجز اختبارات', style: TextStyle(fontSize: 16.sp),)
            ),
            
            SizedBox(height: 30,),
            
            Padding(padding: EdgeInsets.only(left: 10, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children:
              [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('الاسم بالكامل', style: TextStyle(fontSize: 16.sp),)
                ),
                
                SizedBox(height: 10,),

                SizedBox(
                  height: 50,
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    autocorrect: true,
                    controller: fullNameController,
                    keyboardType: TextInputType.name,
                    maxLines: 1,
                    textAlign: TextAlign.end,
                  ),
                ),

                SizedBox(height: 15,),

                Align(
                  alignment: Alignment.centerRight,
                  child: Text('سنه الميلاد', style: TextStyle(fontSize: 16.sp),)
                ),

                SizedBox(height: 10,),

                SizedBox(
                  height: 50,
                  width: 350,
                  child: DateInputField(),
                ),
                
                SizedBox(height: 15,),

                Align(
                  alignment: Alignment.centerRight,
                  child: Text('رقم الهاتف', style: TextStyle(fontSize: 16.sp),)
                ),

                SizedBox(height: 10,),

                SizedBox(
                  height: 70,
                  width: 350,
                  child: PhoneNumberInput()
                ),

                SizedBox(height: 15,),

                Align(
                  alignment: Alignment.centerRight,
                  child: Text('البلد', style: TextStyle(fontSize: 16.sp),)
                ),

                SizedBox(height: 10,),

                SizedBox(
                  height: 50,
                  width: 350,
                  child: CountrySelector()
                ),

                SizedBox(height: 15,),

                Align(
                  alignment: Alignment.centerRight,
                  child: Text('المحافظة', style: TextStyle(fontSize: 16.sp),)
                ),

                SizedBox(height: 10,),

                SizedBox(
                  height: 50,
                  width: 350,
                  child: CountrySelector()
                ),

                SizedBox(height: 30,),

                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff156a50),
                          
                          //shape: CircleBorder(side: Border)
                        ),
                        child: Text('التالي', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                                        ),
                    ),
                ),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}


