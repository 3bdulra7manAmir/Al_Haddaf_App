import 'package:al_haddaf/Features/search_for/widgets/search_cards.dart';
import 'package:flutter/material.dart';

class CustomSearchCardListBuilder extends StatelessWidget
{
  const CustomSearchCardListBuilder({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children:
        [
          GridView.builder(
            shrinkWrap: true,                         
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
            (
              childAspectRatio: 0.72,
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 10,
            ),
            itemCount: 7,
            itemBuilder: (context, index)
            {
              return CustomCard();
            },
          ),
        ],
      ),
    );
  }
}