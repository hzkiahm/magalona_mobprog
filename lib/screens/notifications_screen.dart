import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magalona_mobprog/widgets/notification_widget.dart';
import 'package:material_ui/material_ui.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
  
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: Column(
        children: [
          NotificationWidget(
            description: 'Sample Description',
            post: 'Sample Post',
            name: 'Sample Name',
          ), 
          Divider(),
        ],
      )
    );
  }
}