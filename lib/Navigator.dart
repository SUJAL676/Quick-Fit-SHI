import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newidea/screens/challenge_main_page.dart';
import 'package:newidea/screens/challenges%20page.dart';
import 'package:newidea/screens/dashboard.dart';
import 'package:newidea/screens/home%20page.dart';
import 'package:newidea/screens/leaderboard.dart';

class Navigation_screen extends StatefulWidget
{

  const Navigation_screen({super.key,});

  @override
  State<Navigation_screen> createState() => _Navigation_screenState();
}

class _Navigation_screenState extends State<Navigation_screen> {

  var _page=0;
  late PageController pageController;

  @override
  void initState()
  {
    super.initState();
    pageController=PageController();

    // if(widget.isJump)
    //   {
    //     setState(() {
    //       navigationTapped(1);
    //
    //     });
    //   }
    // else{
    //   _page=0;
    // }
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page)
  {
    pageController.jumpToPage(page);
  }

  void onpageChanged(int page)
  {
    setState(() {
      _page=page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            child: PageView(
              children: [
                Home_Screen(),
                Challenges_Screen(),
                // Challenge_Main_Page(),
                Dasboard_screen(),
                Leaderboard()
              ],

              controller: pageController,
              physics: NeverScrollableScrollPhysics(),
              onPageChanged: onpageChanged,
            )
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 30,left: 30, bottom: 20),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Colors.grey,
                  width: 1
              ),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: CupertinoTabBar(
              border: Border(
                top: BorderSide.none
              ),
              backgroundColor: Colors.white,
              height: 50,
              items: [
                BottomNavigationBarItem(icon:_page==0 ? Image.asset("asset/home_highlighted.png",width: 40,height: 40,):Image.asset("asset/home.png",width: 40,height: 40,)),
                BottomNavigationBarItem(icon:_page==1 ? Image.asset("asset/challenges_highlighted.png",width: 40,height: 40,):Image.asset("asset/challenges.png",width: 40,height: 40,)),
                BottomNavigationBarItem(icon:_page==2 ? Image.asset("asset/dashboard_highlighted.png",width: 40,height: 40,):Image.asset("asset/dashboard.png",width: 40,height: 40,)),
                BottomNavigationBarItem(icon:_page==3 ? Image.asset("asset/leaderboard_highlighted.png",width: 40,height: 40,):Image.asset("asset/leaderboard.png",width: 40,height: 40,))
              ],
              onTap: navigationTapped,
            ),
          ),
        )
      ],
    );
  }
}
