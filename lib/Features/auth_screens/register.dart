import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreenUpdated extends StatelessWidget {
  RegisterScreenUpdated({super.key});
  final double textFormFieldHeight = 45.h;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Stack(
              children: [
                // Freely positioned images
                Stack(
              children: [
                Positioned(
                  top: -330,
                  left: -700,
                  child: Image.asset(
                    'assets/images/standing_player.jpg',
                  ),
                ),
                Container(
                  height: 370.h,
                  width: double.infinity,
                  color: Color(0xFF207054).withOpacity(0.85),
                ),
              ],
            ),
                Positioned(top: -122, left: -70, child: Image.asset('assets/images/g_ball.png',),),                  
                // Content Column
                Column(
                  children: [
                    const SizedBox(height: 150),
                    
                    Image.asset('assets/images/haddaflogo.png', height: 120.h,),
                    
                    const SizedBox(height: 10),
                    
                    // Form Container (unchanged)
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child:  Text(
                              "مرحبا بك",
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Color(0xff414141),
                              ),
                            ),
                          ),
                          // Rest of the form content remains exactly the same
                          // ... (keeping all the existing form widgets)
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.center,
                            child:  Text(
                              "انشاء حساب",
                              style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0D6E47),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                           Text(
                            "اسم المستخدم",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff414141),
                            ),
                          ),
                          SizedBox(height: 10),
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
                            "البريد الالكتروني",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff414141),
                            ),
                          ),
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
                            "رقم الهاتف",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff414141),
                            ),
                          ),
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
                          const SizedBox(height: 10),
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
                          Text(
                            "تأكيد كلمة المرور",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff414141),
                            ),
                          ),
                          const SizedBox(height: 10),
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
                            child: Text(
                              'انشاء حساب',
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
                                  'تسجيل الدخول',
                                  style: TextStyle(
                                    color: Color(0xFF0D6E47),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Text('لديك حساب بالفعل؟'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}