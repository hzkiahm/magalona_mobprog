import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magalona_mobprog/constant.dart';
import 'package:magalona_mobprog/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: '',
          fontSize: ScreenUtil().setSp(25),
          color: fbPrimary,
          fontFamily: 'Klavika',
          fontWeight: FontWeight.w700,
        ),
      ), // AppBar
    ); // Scaffold
  }
}