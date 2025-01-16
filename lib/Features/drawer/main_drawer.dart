import 'package:al_haddaf/Features/drawer/widgets/drawer_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget
{
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>
{

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context)
  {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return Scaffold(
      key: _scaffoldKey,  
      extendBodyBehindAppBar: true,
      endDrawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, 
        leading: Builder(
          builder: (context) => IconButton(  
            icon: Icon(Icons.menu), 
            onPressed: ()
            {
              _scaffoldKey.currentState?.openEndDrawer();
            },
          ),
        ),
        actions: [],  
      ),
      body: Center(child: Text('Content goes here')),
    );
  }
}

class MyDrawer extends StatelessWidget
{
  const MyDrawer({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Drawer(  
      child: Container(
        decoration: BoxDecoration(),
        child: ListView(
          shrinkWrap: true,
          children:
          [
            Container(
              height: 130,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1C8364),  Color(0xFF0D4D3A),],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children:
                [
                  InkWell(
                    onTap: () {Navigator.pop(context);},
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Image.asset('assets/images/close.png')),
                  ),
                  Image.asset('assets/images/logo.png', width: 112, height: 57),
                ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            DrawerList(),
          ],
        ),
      ),
    );
  }
}