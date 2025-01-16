
import 'package:al_haddaf/Features/home/aa_widgets_updated/custom_ads_space.dart';
import 'package:al_haddaf/Features/home/aa_widgets_updated/custom_appbar.dart';
import 'package:al_haddaf/Features/home/aa_widgets_updated/custom_best_player.dart';
import 'package:al_haddaf/Features/home/aa_widgets_updated/custom_services_card.dart';
import 'package:al_haddaf/Features/home/aa_widgets_updated/custom_show_all.dart';
import 'package:al_haddaf/Features/home/aa_widgets_updated/custom_success_story.dart';
import 'package:al_haddaf/Features/home/aa_widgets_updated/custom_watch.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_phoenix/generated/i18n.dart';

class MainPageUpdated extends StatelessWidget
{
  const MainPageUpdated({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          
          child: Column(
            children:
            [
              const CustomAppBar(),
              
              const CustomShowAll(changeableText: 'الخدمات',),
                        
              CustomServicesCardGrid(
                buttonData:
                [
                  {'text': 'حجز اختبارات', 'iconPath': 'assets/images/svg/correct1.svg'},
                  {'text': 'حجز اكاديمية', 'iconPath': 'assets/images/svg/ball_yellow_1.svg'},
                  {'text': 'تسويق لاعبين', 'iconPath': 'assets/svg/play_1.svg'},
                  {'text': 'بورصة اللاعبيـن', 'iconPath': 'assets/images/svg/boy_1.svg'},
                  {'text': 'شاهـد', 'iconPath': 'assets/images/svg/play_yellow_2.svg'},
                  {'text': 'بورصة المدربين', 'iconPath': 'assets/images/svg/soldier_1.svg'},
                  {'text': 'رحلات رياضيـة', 'iconPath': 'assets/images/svg/barca_1.svg'},
                  {'text': 'حجز نـادى رياضى', 'iconPath': 'assets/images/svg/runner_1.svg'},
                ],
            ),

            const SizedBox(height: 5,),

            CustomAdsScroll(),

            const CustomShowAll(changeableText: 'افضل اللاعبين'),

            const SizedBox(height: 15,),
            CustomBestPlayersScroll(),

            const SizedBox(height: 5,),
            CustomAdsScroll(),

            const SizedBox(height: 5),
            CustomShowAll(changeableText: 'قصص نجاح هداف'),

            const SizedBox(height: 15),
            CustomSuccessStoryScroll(),

            const SizedBox(height: 5),
            CustomAdsScroll(),

            CustomShowAll(changeableText: 'شاهد'),

            const SizedBox(height: 15),
            CustomWatchScroll(),

            SizedBox(height: 10,),
            //CustomButtomNavBar(),
            ],
          ),
        ),
      ),
       
    );
  }
}

