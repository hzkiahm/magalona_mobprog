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
    return ListView(
      children: const [
          NotificationWidget(
            description: 'Reacted on your post',
            post: '"never goin back!"',
            name: 'Phoebe Bridgers', 
            profileImage: 'assets/icons/pb.png',
          ), 
          Divider(),
          NotificationWidget(
            description: 'Commented on your post',
            post: '"never goin back!"',
            name: 'Phoebe Bridgers', 
            profileImage: 'assets/icons/pb.png',
          ), 
          Divider(),
          NotificationWidget(
            description: 'Reacted on your post',
            post: '"never goin back!"',
            name: 'Gergia Lee', 
            profileImage: 'assets/icons/gl.png',
          ), 
          Divider(),
          NotificationWidget(
            description: 'Reacted on your post',
            post: '"never goin back!"',
            name: 'Val Cat', 
            profileImage: 'assets/icons/ag.png',
          ), 
          Divider(),
          
          NotificationWidget(
            description: 'Reacted on your post',
            post: '"never goin back!"',
            name: 'Claire Elizabeth Dela Cruz', 
            profileImage: 'assets/icons/c.png',
          ), 
          Divider(),
          NotificationWidget(
            description: 'Reacted on your post',
            post: '"never goin back!"',
            name: 'Noah Fence', 
            profileImage: 'assets/icons/dh.png',
          ), 
          Divider(),
          NotificationWidget(
            description: 'Reacted on your post',
            post: '"never goin back!"',
            name: 'Fleabag', 
            profileImage: 'assets/icons/f.png',
          ), 
          Divider(),
          NotificationWidget(
            description: 'Reacted on your post',
            post: '"never goin back!"',
            name: 'Mike Drop', 
            profileImage: 'assets/icons/m.png',
          ), 
          Divider(),
          NotificationWidget(
            description: 'Reacted on your post',
            post: '"never goin back!"',
            name: 'Bruha Ni Goy', 
            profileImage: 'assets/icons/lb.png',
          ), 
          Divider(),
          NotificationWidget(
            description: 'Reacted on your post',
            post: '"never goin back!"',
            name: 'Marklyn Monroe Jackstone', 
            profileImage: 'assets/icons/vg.png',
          ), 
          Divider(),
        ],
      );
  }
}