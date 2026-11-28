import 'package:magalona_mobprog/widgets/newsfeed_card.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
        children: const [
          NewsfeedCard(
            userName: 'Hezekiah Magalona',
            postContent: 'never goin back!',
            date: '2 hours ago',
            numOfLikes: 7, 
            profileImage: 'assets/icons/hm.png', 
            hasImage: false,
          ), 
          NewsfeedCard(
            userName: 'Phoebe Bridgers',
            postContent: 'sa carmona etivac lng makikita',
            date: 'November 22, 2026',
            numOfLikes: 142,
            hasImage: true,
            profileImage: 'assets/icons/pb.png',
          ), 
          NewsfeedCard(
            userName: 'Claire Elizabeth Dela Cruz',
            postContent: 'bags packed, nowhere to go',
            date: '5 hours ago',
            numOfLikes: 34,
            hasImage: false,
            profileImage: 'assets/icons/c.png',
          ), 
          NewsfeedCard(
            userName: 'Cat Val',
            postContent: 'meow',
            date: 'November 20, 2026',
            numOfLikes: 98,
            hasImage: false,
            profileImage: 'assets/icons/ag.png',
          ),  
          NewsfeedCard(
            userName: 'Georgia Lee',
            postContent: 'why wasnt g there',
            date: 'November 21 , 2026',
            numOfLikes: 4,
            hasImage: true,
            postImage: 'assets/images/nu.png',
            profileImage: 'assets/icons/gl.png',
          ), 
          NewsfeedCard(
            userName: 'Noah Fence',
            postContent: 'cno nag-aano ano jan!?',
            date: '16 hours ago',
            numOfLikes: 23,
            hasImage: false,
            profileImage: 'assets/icons/dh.png',
          ), 
          NewsfeedCard(
            userName: 'Fleabag',
            postContent: 'people make mistakes',
            date: '3 hours ago',
            numOfLikes: 0,
            hasImage: false,
            profileImage: 'assets/icons/f.png',
          ),
          NewsfeedCard(
            userName: 'Mike Drop',
            postContent: 'gumagana naman kanina',
            date: '54 minutes ago',
            numOfLikes: 16,
            hasImage: true,
            postImage: 'assets/images/lappy.png',
            profileImage: 'assets/icons/m.png',
          ),
          NewsfeedCard(
            userName: 'Bruha Ni Goy',
            postContent: 'train of thought',
            date: '8 hours ago',
            numOfLikes: 8,
            hasImage: true,
            postImage: 'assets/images/train.png',
            profileImage: 'assets/icons/lb.png',
          ),
          NewsfeedCard(
            userName: 'Marklyn Monroe Jackstone',
            postContent: 'owowtidey',
            date: '4 hours ago',
            numOfLikes: 47,
            hasImage: true,
            postImage: 'assets/images/girlie.png',
            profileImage: 'assets/icons/vg.png',
          ),
      ],
    ),
      ),
    );
  }
}
