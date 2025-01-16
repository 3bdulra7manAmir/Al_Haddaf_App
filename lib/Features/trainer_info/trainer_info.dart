import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrainerInfo extends StatelessWidget
{
  const TrainerInfo({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Material(
      color: Colors.black54,
      child: Stack(
        children:
        [
          //POP UP Background
          GestureDetector(
            onTap: (){Navigator.pop(context);},
            child: Container(
              color: Colors.transparent,
              width: double.infinity,
              height: double.infinity,
            ),
          ),

          //ALL Centered Content Inserted After the Background or Above The Background "The Card itself is"
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children:
              [
                //ALL OF the White Container INCLUDING THE PART behind the Player IMAGE => THE PART behind the Player IMAGE ALL of it...
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 13),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                    boxShadow:
                    [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Stack(
                      children:
                      [
                        Container(height: MediaQuery.of(context).size.height * 0.65,),
                                
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.1,
                          right: MediaQuery.of(context).size.width * 0.03,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:
                            [
                              // الجنسية
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:
                                [
                                  Image.asset('assets/images/png/EG_Flag.png',),
                                  SizedBox(width: 5.w,),
                                  Text("الجنسية : ", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, color: Color(0xff959595))),
                                  SizedBox(width: 5.w,),
                                  Image.asset("assets/images/png/Yellow_Dot.png"),
                                ],
                              ),
                                
                              SizedBox(height: 10.h,),
                                
                              // سنوات الخبرة
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:
                                [
                                  Text("10 سنوات", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, )),
                                  SizedBox(width: 5.w,),
                                  Text("سنوات الخبرة : ", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, color: Color(0xff959595))),
                                  SizedBox(width: 5.w,),
                                  Image.asset("assets/images/png/Yellow_Dot.png"),
                                ],
                              ),
                                
                              SizedBox(height: 10.h,),
                                
                              // المؤهل الاكاديمى
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:
                                [
                                  Text("تربية رياضية", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, )),
                                  SizedBox(width: 5.w,),
                                  Text("المؤهل الاكاديمى : ", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, color: Color(0xff959595))),
                                  SizedBox(width: 5.w,),
                                  Image.asset("assets/images/png/Yellow_Dot.png"),
                                ],
                              ),
                                
                              SizedBox(height: 10.h,),
                                
                              // الخبرات العملية
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:
                                [
                                  Text("تدريب ناشئين نادى حرس الحدود", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, )),
                                  SizedBox(width: 5.w,),
                                  Text("الخبرات العملية : ", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, color: Color(0xff959595))),
                                  SizedBox(width: 5.w,),
                                  Image.asset("assets/images/png/Yellow_Dot.png"),
                                ],
                              ),
                                
                              SizedBox(height: 10.h,),
                                
                              // الشهادات التدريبية
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:
                                [
                                  Text("رخصة تدريب A", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, )),
                                  SizedBox(width: 5.w,),
                                  Text("الشهادات التدريبية : ", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, color: Color(0xff959595))),
                                  SizedBox(width: 5.w,),
                                  Image.asset("assets/images/png/Yellow_Dot.png"),
                                ],
                              ),
                                
                              SizedBox(height: 10.h,),
                                
                              // الاسلوب التدريبى المفضل
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:
                                [
                                  Text("الهجوم المرتد", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, )),
                                  SizedBox(width: 5.w,),
                                  Text("الاسلوب التدريبى المفضل : ", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, color: Color(0xff959595))),
                                  SizedBox(width: 5.w,),
                                  Image.asset("assets/images/png/Yellow_Dot.png"),
                                ],
                              ),
                                
                              SizedBox(height: 10.h,),
                                
                              // التحكم فى مجرى المباراة
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:
                                [
                                  Text("الاستراتيجيات المستخدمة فى المباريات", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, )),
                                  SizedBox(width: 5.w,),
                                  Text("التحكم فى مجرى المباراة : ", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, color: Color(0xff959595))),
                                  SizedBox(width: 5.w,),
                                  Image.asset("assets/images/png/Yellow_Dot.png"),
                                ],
                              ),
                                
                              SizedBox(height: 10.h,),
                                
                              // النجاحات السابقة
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:
                                [
                                  Text("الفوز بدورى الناشئين", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, )),
                                  SizedBox(width: 5.w,),
                                  Text("النجاحات السابقة : ", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, color: Color(0xff959595))),
                                  SizedBox(width: 5.w,),
                                  Image.asset("assets/images/png/Yellow_Dot.png"),
                                ],
                              ),
                                
                              SizedBox(height: 10.h,),
                                
                              // عدد المباريات التى ادارها خلا الموسم الماضى
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:
                                [
                                  Text("34", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, )),
                                  SizedBox(width: 5.w,),
                                  Text("عدد المباريات التى ادارها خلا الموسم الماضى : ", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, color: Color(0xff959595))),
                                  SizedBox(width: 5.w,),
                                  Image.asset("assets/images/png/Yellow_Dot.png"),
                                ],
                              ),
                                
                              SizedBox(height: 10.h,),
                                
                              // نسبة الفوز
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:
                                [
                                  Text("92%", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, )),
                                  SizedBox(width: 5.w,),
                                  Text("نسبة الفوز : ", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, color: Color(0xff959595))),
                                  SizedBox(width: 5.w,),
                                  Image.asset("assets/images/png/Yellow_Dot.png"),
                                ],
                              ),
                                
                              SizedBox(height: 10.h,),
                                
                              // طريقة التعامل مع التحديات والضغوط
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:
                                [
                                  Text("التركيز والتخطيط", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, )),
                                  SizedBox(width: 5.w,),
                                  Text("طريقة التعامل مع التحديات والضغوط : ", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, color: Color(0xff959595))),
                                  SizedBox(width: 5.w,),
                                  Image.asset("assets/images/png/Yellow_Dot.png"),
                                ],
                              ),
                                
                              SizedBox(height: 10.h,),
                                
                              // الخطط المستقبلية
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:
                                [
                                  Text("التطور الرياضى والتدريبى", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, )),
                                  SizedBox(width: 5.w,),
                                  Text("الخطط المستقبلية : ", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, color: Color(0xff959595))),
                                  SizedBox(width: 5.w,),
                                  Image.asset("assets/images/png/Yellow_Dot.png"),
                                ],
                              ),
                                
                              SizedBox(height: 10.h,),
                                
                              // الاهداف
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:
                                [
                                  Text("تدريب فريق بالدورى الممتاز", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, )),
                                  SizedBox(width: 5.w,),
                                  Text("الاهداف : ", textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 13.sp, color: Color(0xff959595))),
                                  SizedBox(width: 5.w,),
                                  Image.asset("assets/images/png/Yellow_Dot.png"),
                                ],
                              ),
                                
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.width * 0.045,
                  
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.913,
                    height: MediaQuery.of(context).size.height * 0.63,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.w),
                      border: Border.all(color: Color(0xffFFB900), width: 1.2.w,),
                    ),                  ),
                ),
            
                // Profile Image positioned at the top center
                Positioned(
                  top: MediaQuery.of(context).size.height * -0.06, // Adjust this value to control how much the image overlaps
                  left: MediaQuery.of(context).size.width * 0,
                  right: MediaQuery.of(context).size.width * 0,
            
                  child: Center(
                    child: Container(
                      width: 100.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xffFFB900), width: 1.5.w,),
                        boxShadow:
                        [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 8,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: ClipOval(child: Image.asset('assets/images/png/Coach_Hover.png', fit: BoxFit.cover,),),
                    ),
                  ),
                ),
            
                // External close button
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.02,
                  top: MediaQuery.of(context).size.height * -0.09,
                  child: IconButton(
                    onPressed: () {Navigator.pop(context);},
                    icon: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.close, color: Colors.white, size: 20,),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}