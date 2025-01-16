import 'package:flutter/material.dart';

class CustomSuccessStoryScroll extends StatelessWidget
{
  const CustomSuccessStoryScroll({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: MediaQuery.of(context).size.height * 0.14,
      decoration: BoxDecoration(
        image:DecorationImage(image: AssetImage('assets/images/png/Rectangle.png')),),
      child: ListView.builder(
        shrinkWrap: true,
        reverse: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index)
        {
          return Padding(
            padding: EdgeInsets.only(right: 5),
            child: Row(
              children:
              [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:
                  [
                    ClipRRect(borderRadius: BorderRadius.circular(30),
                        child: Image.asset('assets/images/png/player2.png', fit: BoxFit.cover,
                          width: 60,
                          height: 60,
                        )),

                    SizedBox(height: 6,),
                    Text('عبدالله سالم', style: TextStyle( fontSize: 14, color: Colors.black,),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 3,),
                    Text('مهاجم', style: TextStyle(fontSize: 12, color: Color(0xff959595),),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(width: 5,), //BETWEEN EACH ITEM
              ],
            ),
          );
        },
      ),
    );
  }
}
