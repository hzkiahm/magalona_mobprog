import 'package:magalona_mobprog/widgets/newsfeed_screen.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'Hezekiah Magalona',
          postContent: 'never goin back again!',
          date: '2 hours ago',
          numOfLikes: 7, 
          profileImage: 'assets/icons/hpfp.png', 
          hasImage: false,
        ), 
        NewsfeedCard(
          userName: 'Phoebe Bridgers',
          postContent: 'sa carmona etivac lng makikita',
          date: 'November 24, 2026',
          numOfLikes: 142,
          hasImage: true,
          profileImage: 'assets/icons/pbpfp.png',
        ), 
      ],
    );
  }
}