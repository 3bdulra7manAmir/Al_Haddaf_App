import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreenUpdated extends StatelessWidget
{
  LoginScreenUpdated({super.key});
  final double textFormFieldHeight = 45.h;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children:
          [
            // Freely positioned images
            Stack(
              children:
              [
                Positioned(top: -295.h, left: -640.w,

                child: Image.asset('assets/images/jpg/standing_player.jpg',),),

                Container(height: 370.h, width: double.infinity, color: Color(0xFF207054).withOpacity(0.85),),
              ],
            ),
            
            Positioned(top: -100.h, left: -65.w, child: Image.asset('assets/images/png/g_ball.png',),),

            Center(child: Image.asset('assets/images/png/haddaflogo.png', height: 500.h, width: 150.w,),),

            Column(
              children:
              [
                const SizedBox(height: 150),
                
                // Form Container (unchanged)
                Padding(
                  padding: EdgeInsets.only(top: 85.h),

                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    padding: EdgeInsets.all(16.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                      boxShadow:
                      [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:
                      [
                        Align(alignment: Alignment.center,
                          child:  Text("مرحبا بك", style: TextStyle(fontSize: 14.sp, color: Color(0xff414141),),),
                        ),

                        const SizedBox(height: 10),

                        Align(alignment: Alignment.center,
                          child:  Text("تسجيل الدخول", style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold, color: Color(0xFF0D6E47),),),
                        ),

                        const SizedBox(height: 30),
                         Text("البريد الالكتروني", style: TextStyle(fontSize: 14.sp, color: Color(0xff414141),),),

                        const SizedBox(height: 10),
                        
                        SizedBox(
                          height: 45,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                         Text(
                          "كلمة المرور",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff414141),
                          ),
                        ),
                         SizedBox(height: 10),
                        SizedBox(
                          height: 45,
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.visibility_off),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                             Text(
                              'تذكرني',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff0D4D3A),
                            minimumSize: const Size(double.infinity, 45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {},
                          child:  Text(
                            'تسجيل الدخول',
                            style: TextStyle(fontSize: 18.sp, color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'إنشاء حساب',
                                style: TextStyle(
                                  color: Color(0xFF0D6E47),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Text('ليس لديك حساب؟'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
