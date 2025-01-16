
import 'package:al_haddaf/Features/home/aa_widgets_updated/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_services_content.dart';

class CustomServices extends StatelessWidget
{
  const CustomServices({super.key});

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
          
              SizedBox(height: 10,),
          
              CustomServicesCardNew(
                buttonData:
                  [
                    {'text': 'حجز اختبارات', 'iconPath': 'assets/svg/correct1.svg'},
                    {'text': 'حجز اكاديمية', 'iconPath': 'assets/svg/ball_yellow_1.svg'},
                    {'text': 'تسويق لاعبين', 'iconPath': 'assets/svg/play_1.svg'},
                    {'text': 'بورصة اللاعبيـن', 'iconPath': 'assets/svg/boy_1.svg'},
                    {'text': 'شاهـد', 'iconPath': 'assets/svg/play_yellow_2.svg'},
                    {'text': 'بورصة المدربين', 'iconPath': 'assets/svg/soldier_1.svg'},
                    {'text': 'رحلات رياضيـة', 'iconPath': 'assets/svg/barca_1.svg'},
                    {'text': 'حجز نـادى رياضى', 'iconPath': 'assets/svg/runner_1.svg'},
                  ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}