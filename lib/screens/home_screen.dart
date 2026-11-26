import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magalona_mobprog/constant.dart';
import 'package:magalona_mobprog/screens/newsfeed_screen.dart';
import 'package:magalona_mobprog/screens/notifications_screen.dart';
import 'package:magalona_mobprog/screens/profile_screen.dart';
import 'package:magalona_mobprog/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: fbTextColorWhite,
        elevation: 2,
        title: _selectedIndex == 0
            ? CustomText(
                text: 'ScrollOfDoom',
                fontSize: ScreenUtil().setSp(25),
                color:fbDarkPrimary,
                fontFamily: 'Klavika',
                fontWeight: FontWeight.w700,
              )
            : _selectedIndex == 1
                ? CustomText(
                    text: 'Daily Distractions',
                    fontSize: ScreenUtil().setSp(25),
                    color: fbDarkPrimary,
                    fontFamily: 'Klavika',
                    fontWeight: FontWeight.w700,
                  )
                : CustomText(
                    text: 'The Suspect',
                    fontSize: ScreenUtil().setSp(25),
                    color: fbDarkPrimary,
                    fontFamily: 'Klavika',
                    fontWeight: FontWeight.w700,
                  ), // AppBar
      ), // AppBar

      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          NewsfeedScreen(),
          NotificationScreen(),
          ProfileScreen(),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ), // PageView

      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: _onTappedBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'), 
        ],
        selectedItemColor: fbPrimary,
        currentIndex: _selectedIndex,
      ), // BottomNavigationBar // BottomNavigationBar
    ); // Scaffold
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}