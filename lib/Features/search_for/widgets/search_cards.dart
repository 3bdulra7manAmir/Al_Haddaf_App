import 'package:al_haddaf/Features/search_for/widgets/search_popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget
{
  const CustomCard({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children:
      [
        GestureDetector(
          onTap: ()
          {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) => PopUpCard(),
            );
          },
          child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
          child: Stack(
            children:
            [
              Image.asset('assets/images/player3.png',),
              ClipRRect( borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.239,
                  color: Color.fromRGBO(13, 77, 58, 0.63).withOpacity(0.5),
                ),
              ),
            ],
          )
          ),
        ),
    
        // Play Icon
        Positioned.fill(
          top: -45,
          child: Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: (){
                showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) => PopUpCard(),
              );
              },
              child: Image.asset('assets/images/Video_Play_icon.png', width: 45,)),
          ),
        ),
    
        Positioned(
          left: 145, top: 15,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1.0),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(9.0),
            ),
            child: Text('P14', style: TextStyle(fontSize: 14.sp, color:Colors.white,),),
          ),
        ),
    
    
        //----------------------------------------------------------------//
        Positioned(
          left: 5,
          top: 215,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Row(
                children:
                [
                  Text('19/11/2000', style: TextStyle(color: Colors.black, fontSize: 14.0.sp),),
                  SizedBox(width: 5.0),
                  Icon(Icons.circle, size: 9.0, color: Colors.orange),
                  SizedBox(width: 55.0),
                  //Spacer(), ERROR
                  Image.asset('assets/images/Egyptain_Flag.png',),
                  SizedBox(width: 5.0),
                  Icon(Icons.circle, size: 9.0, color: Colors.orange),
                ],
              ),
    
              SizedBox(height: 4.0),
    
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                [
                  RatingBarIndicator(
                    rating: 4.5,
                    itemBuilder: (context, _) =>
                    Icon(Icons.star, color: Colors.amber),
                    itemCount: 5,
                    itemSize: 15.0,
                    direction: Axis.horizontal,
                  ),
                  
                  SizedBox(width: 22.0),
                  
                  Text('جناح ايسر', style: TextStyle(color: Colors.black, fontSize: 15.0.sp,),),
    
                  SizedBox(width: 5),
    
                  Icon(Icons.circle, size: 9.0, color: Colors.orange),
                ],
              ),
            ],
          ),
        ),
        
      ],
    );
  }
}