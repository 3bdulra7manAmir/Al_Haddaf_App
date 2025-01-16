import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopUpCard extends StatelessWidget
{
  const PopUpCard({super.key,});


  @override
  Widget build(BuildContext context)
  {
    return Material(
      color: Colors.black54, // Semi-transparent background
      child: Stack(
        children:
        [
          // Close overlay on background tap
          GestureDetector(
            onTap: (){Navigator.pop(context);},
            child: Container(
              color: Colors.transparent,
              width: double.infinity,
              height: double.infinity,
            ),
          ),

          // Centered content with external close button
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children:
              [
                // Main popup container
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow:
                    [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children:
                      [
                        // Image container
                        Stack(
                          children:
                          [
                            Image.asset('assets/images/png/player3.png',),
                            Container(height: MediaQuery.of(context).size.height * 0.5,
                            color: Color.fromRGBO(13, 77, 58, 0.63).withOpacity(0.5),),

                            // Play Icon
                            Positioned.fill(top: -45,
                              child: Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                    onTap: ()
                                    {
                                      print('A7a');
                                    },
                                    child: Image.asset('assets/images/png/Video_Play_icon.png',width: 45,
                                    )),
                              ),
                            ),
                          ],
                        ),

                        // Details section
                        Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                SizedBox(
                                  // This ensures the Stack has a size to work with
                                  width: double.infinity,
                                  height: 100.h, // Adjust this value based on your needs
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 5,
                                        top:
                                            0, // Changed from 215 to 0 since we don't need such a large offset
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: 
                                          [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .spaceBetween, // This helps spread out the items
                                              children: [
                                                Text(
                                                  '19/11/2000',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14.0.sp),
                                                ),
                                                SizedBox(width: 5.0),
                                                Icon(Icons.circle,
                                                    size: 9.0,
                                                    color: Colors.orange),
                                                SizedBox(width: 210.0),
                                                Image.asset(
                                                    'assets/images/Egyptain_Flag.png'),
                                                SizedBox(width: 5.0),
                                                Icon(Icons.circle,
                                                    size: 9.0,
                                                    color: Colors.orange),
                                              ],
                                            ),
                                            SizedBox(height: 10.0),
                                            Row(
                                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                RatingBarIndicator(
                                                  rating: 4.5,
                                                  itemBuilder: (context, _) =>
                                                      Icon(Icons.star,
                                                          color: Colors.amber),
                                                  itemCount: 5,
                                                  itemSize: 15.0,
                                                  direction: Axis.horizontal,
                                                ),
                                                SizedBox(width: 177.0),
                                                Text(
                                                  'جناح ايسر',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0.sp,
                                                  ),
                                                ),
                                                SizedBox(width: 5),
                                                Icon(Icons.circle,
                                                    size: 9.0,
                                                    color: Colors.orange),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                        )
                      ],
                    ),
                  ),
                ),

                // External close button
                Positioned(
                  left: 15, // Position outside the container
                  top: -60, // Position above the container
                  child: IconButton(
                    onPressed: (){Navigator.pop(context);},
                    icon: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
