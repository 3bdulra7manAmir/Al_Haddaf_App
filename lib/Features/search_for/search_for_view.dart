
import 'package:al_haddaf/Features/home/aa_widgets_updated/custom_appbar.dart';
import 'package:al_haddaf/Features/search_for/widgets/search_for_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchFor extends StatelessWidget
{
  const CustomSearchFor({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:
            [
              CustomAppBar(),
              
              SizedBox(height: 20,),
          
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:
                [
                  Padding(
                    padding: EdgeInsets.only(right: 18),
                    child: Text('ابحث عن', style: TextStyle(fontSize: 16.sp),)
                  ),

                  SizedBox(height: 5,),
                  
                  CustomSearchCardListBuilder(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}