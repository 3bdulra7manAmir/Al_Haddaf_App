import 'package:al_haddaf/Features/sp_trips/widgets/list_builder.dart';
import 'package:al_haddaf/Features/sp_trips/widgets/re_trips_text_icon.dart';
import 'package:flutter/material.dart';

class SpTripsViewbody extends StatelessWidget
{
  const SpTripsViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children:
            [
              ReTripsTextAndIcon(),

              //SizedBox(height: 20.0),
              
              SportTripsListViewBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}