import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magalona_mobprog/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.name,
    required this.post,
    required this.description,
    required this.profileImage,
  });

  final String name;
  final String post;
  final String description;
  final String profileImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15.r,
            backgroundImage: AssetImage(profileImage),
            backgroundColor: const Color.fromARGB(255, 254, 255, 251),
          ),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: name, 
                fontSize: ScreenUtil().setSp(20), 
                color: Colors.black,
                fontWeight: FontWeight.w800,
                ),
              CustomText(
                text: 'Post: $post',
                fontSize: ScreenUtil().setSp(13),
                color: Colors.black,
                ),
                CustomText(
                  text: description, 
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                )
              ],
            ),
            const Spacer(),
            const Icon(Icons.more_horiz),
          ],
        ),
      );
    } 
  }