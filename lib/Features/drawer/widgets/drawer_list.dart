import 'package:al_haddaf/Features/drawer/widgets/drawer_cards.dart';
import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget

{
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>
            [
              // List items
              CustomInDrawerButton(
                widgetText: 'الرئيسية',
    
                boxDecoration: BoxDecoration(
                  color: Color(0xff0D4D3A),
                  borderRadius: BorderRadius.circular(5),
                  ),
                
                cardIcon: Icons.home,
                containerHeight: 30,
                containerWidth: 200,
                
              ),
    
              ListTile(
                leading: Image.asset('assets/images/services.png'),
                title: Text('الخدمات'),
              ),

              Padding(
                padding: EdgeInsets.only(right: 4),
                child: ListTile(
                  //contentPadding: EdgeInsets.zero,
                  leading: Image.asset('assets/images/human.png'), 
                  title: Text('افضل اللاعبين'),
                ),
              ),

              ListTile(
                leading: Image.asset('assets/images/winner.png'),  
                title: Text('قصص نجاح الهداف'),
              ),

              Padding(
                padding: EdgeInsets.only(right: 4),
                child: ListTile(
                  leading: Image.asset('assets/images/Profile.png'), 
                  title: Text('الصفحة  الشخصية'),
                ),
              ),
    
              
              //SizedBox(height: 20),
    
              CustomInDrawerButton(
                widgetText: 'تسجيل الخروج',
    
                boxDecoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                
                cardIcon: Icons.exit_to_app,
                containerHeight: 30,
                containerWidth: 200,
                
              ),
            ],
          ),
        );
  }
}