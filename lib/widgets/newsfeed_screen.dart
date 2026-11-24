import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magalona_mobprog/constant.dart';
import 'package:magalona_mobprog/widgets/custom_text.dart';

class NewsfeedCard extends StatefulWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;
  final String? postImage;
  final String profileImage;

  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    required this.numOfLikes,
    required this.hasImage,
    required this.profileImage,
    this.postImage,
  });

  @override
  State<NewsfeedCard> createState() => _NewsfeedCardState();
}

class _NewsfeedCardState extends State<NewsfeedCard> {
  late int _likeCount;
  bool _isLiked = false;

  @override
  void initState() {
    super.initState();
    _likeCount = widget.numOfLikes;
  }

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
      _likeCount += _isLiked ? 1 : -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final imageAsset = widget.postImage ?? 'assets/images/pbxcarmona.png';

    return Card(
      margin: EdgeInsets.all(10.w),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 15.r,
                  backgroundImage: AssetImage(widget.profileImage),
                  backgroundColor: Colors.grey[300],
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: widget.userName,
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: widget.date,
                            fontSize: 12.sp,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 3.w),
                          Icon(
                            Icons.public,
                            color: Colors.grey,
                            size: 14.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(Icons.more_horiz, size: 20.sp),
              ],
            ),
            SizedBox(height: 6.h),
            CustomText(
              text: widget.postContent,
              fontSize: 12.sp,
              color: Colors.black,
            ),
            if (widget.hasImage) ...[
              SizedBox(height: 8.h),
              Image.asset(
                imageAsset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ],
            SizedBox(height: 6.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: _toggleLike,
                  icon: Icon(
                    Icons.thumb_up,
                    size: 16.sp,
                    color: _isLiked ? fbPrimary : fbDarkPrimary,
                  ),
                  label: CustomText(
                    text: _likeCount.toString(),
                    fontSize: 12.sp,
                    color: _isLiked ? fbPrimary : fbDarkPrimary,
                  ),
                ),
                CustomText(
                  text: 'Comment',
                  fontSize: 12.sp,
                  color: fbDarkPrimary,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.redo, size: 16.sp, color: fbDarkPrimary),
                  label: CustomText(
                    text: 'Share',
                    fontSize: 12.sp,
                    color: fbDarkPrimary,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 10.r,
                  backgroundImage: const AssetImage('assets/icons/hpfp.png'),
                  backgroundColor: Colors.grey[300],
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10.w, right: 6.w),
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(14.r),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomText(
                            text: 'Write a comment...',
                            fontSize: 11.sp,
                            color: Colors.grey,
                          ),
                        ),
                        const CommentIcon(icon: Icons.emoji_emotions_outlined),
                        const CommentIcon(icon: Icons.camera_alt_outlined),
                        const CommentIcon(icon: Icons.gif_box_outlined),
                        const CommentIcon(icon: Icons.sticky_note_2_outlined),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            CustomText(
              text: 'View all comments',
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class CommentIcon extends StatelessWidget {
  const CommentIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon, color: Colors.grey[600], size: 14.sp),
      padding: EdgeInsets.zero,
      constraints: BoxConstraints.tightFor(
        width: 25.w,
        height: 22.h,
      ),
      style: IconButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
      ),
      visualDensity: VisualDensity.compact,
    );
  }
}