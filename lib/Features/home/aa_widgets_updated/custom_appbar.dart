import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget
{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 189.h, // Adjusted height for responsiveness
      width: 430.w, // Adjusted width for responsiveness
      child: Stack(
        children:
        [
          // Background with gradient and image
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF1C8364), Color(0xFF0D4D3A)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16), // Rounded bottom corners
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
          // Background image
          Positioned(left: -120, top: -100, child: Image.asset('assets/images/g_ball.png', fit: BoxFit.cover,),),

          // AppBar content (menu, logo, etc.)
          Column(
            children:
            [
              SizedBox(height: MediaQuery.of(context).size.height * 0.004,), //HERE
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                  [
                    // Left side - Menu icon
                    Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: GestureDetector(onTap: () {}, child: SvgPicture.asset('assets/svg/menu_icon2.svg', width: 36.61, height: 36.61,),
                      ),
                    ),
                    // Right side - Logo and text
                    Row(
                      children:
                      [
                        Image.asset('assets/images/logo.png', height: 57, width: 112,),
                      ],
                    ),
                  ],
                ),
              ),

              // Search bar
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 45.h,
                  width: 390.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children:
                    [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'البحث عن...',
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp,), //HERE
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(vertical: 12),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: SvgPicture.asset('assets/svg/search_icon.svg'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
