import 'package:al_haddaf/Features/sp_trips/widgets/sp_trips_card.dart';
import 'package:flutter/material.dart';

class SportTripsListViewBuilder extends StatelessWidget
{
  const SportTripsListViewBuilder({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
      itemBuilder: (context, index) => SpTripsView(),
      itemCount: 5,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
    );
  }
}