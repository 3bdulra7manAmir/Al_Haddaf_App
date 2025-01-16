import 'package:al_haddaf/Features/show_tr_profiles/widgets/custom_showtrprofile_text.dart';
import 'package:al_haddaf/Features/show_tr_profiles/widgets/gridview_builder.dart';
import 'package:flutter/material.dart';

class ShowTrProfilesViewbody extends StatelessWidget
{
  const ShowTrProfilesViewbody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children:
          [
            CustomShowTrProfileTextWidget(),

            SizedBox(height: 5,),
        
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, right: MediaQuery.of(context).size.width * 0.03),
                child: ShowTrProfilesGridViewBuilder(),
              ),
            ),
          ],
        ),
        ),
      );
  }
}

