import 'package:flutter/material.dart';

class CustomWatchScroll extends StatelessWidget
{
  const CustomWatchScroll({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.12,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4, // Number of images
        itemBuilder: (context, index)
        {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Stack
            (
              alignment: Alignment.center,
              children:
              [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('assets/images/watch.png', fit: BoxFit.cover,),
                  ),
                Opacity( opacity: 0.5,
                  child: Icon(
                    Icons.play_circle_outline,
                    color: Colors.white,
                    size: 30,
                    ),
                ),
                //ElevatedButton(onPressed: (){}, child: Image.asset('assets/images/play_Icon.png', fit: BoxFit.cover))
              ],
            ),
          );
        },
      ),
    );
  }
}
