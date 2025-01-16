import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomServicesCardNew extends StatelessWidget
{
  const CustomServicesCardNew({super.key, required this.buttonData});
  
  final List<Map<String, dynamic>> buttonData;

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
              childAspectRatio: 6,
              crossAxisCount: 1,
              crossAxisSpacing: 16,
              mainAxisSpacing: 10,
            ),
            itemCount: buttonData.length,
            itemBuilder: (context, index)
            {
              return _buildButton(buttonData[index]['text'], buttonData[index]['iconPath'], context);
            },
          ),
        ],
      ),
    );
  }

  // Reusable method to create the button
  Widget _buildButton(String text, String iconPath, context)
  {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:
          [
            SvgPicture.asset('assets/svg/ball.svg'),
            Spacer(),
            Text(text, style: TextStyle(fontSize: 14.sp), textAlign: TextAlign.center,),
            SizedBox(width: MediaQuery.of(context).size.width * 0.03),
            SvgPicture.asset(iconPath, width: 32, height: 32,),
          ],
        ),
      ),
    );
  }
}
