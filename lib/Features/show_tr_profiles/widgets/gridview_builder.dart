import 'package:al_haddaf/Features/show_tr_profiles/widgets/profile_card.dart';
import 'package:flutter/material.dart';

class ShowTrProfilesGridViewBuilder extends StatelessWidget
{
  const ShowTrProfilesGridViewBuilder({super.key});

  @override
  Widget build(BuildContext context)
  {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Number of columns
        crossAxisSpacing: 4.0, // Space between columns
        mainAxisSpacing: 8.0, // Space between rows
        childAspectRatio: 0.77, // Aspect ratio of each item //CARD SIZE
      ),
      itemCount: 7, // Number of items
      itemBuilder: (context, index)
      {
        return ProfileCard();
      },
    );
  }
}