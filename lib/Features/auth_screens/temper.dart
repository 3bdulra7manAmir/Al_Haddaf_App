import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Choice extends StatelessWidget
{
  const Choice({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Stack(
        children:
        [

          Stack(
            children:
            [
              Positioned(top: 0, left: 0, right: -140, bottom: 0, child: Image.asset('assets/images/jpg/standing_player.jpg', fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    color: Color(0xFF207054).withOpacity(0.85),
                  ),

            Center(child: Image.asset('assets/images/png/new_logo.png'),),
            ],
          ),
          
          
          
          
          Positioned(bottom: -20, left: 0, right: 0,
            child: Padding(
              padding: const EdgeInsets.all(45),
              child: Column(
                mainAxisSize: MainAxisSize.min, 
                children:
                [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff447667),
                      minimumSize: const Size(double.infinity, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('انشاء حساب', style: TextStyle(fontSize: 18.sp, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),

                  SizedBox(height: 10),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {}, child: Text('تسجيل الدخول', style: TextStyle(fontSize: 18.sp, color: Color(0xff0d4d3a), fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
