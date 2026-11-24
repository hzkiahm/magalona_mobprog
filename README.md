magalona_mobprog

Lab Activity 1A: File Structuring | Design Pattern

To make images dynamic in my newsfeed card, I used a simple hasImage toggle (true or false) along with Flutter's Image widget. When a post in screens/newsfeed_screen.dart sets hasImage: true, it displays my post photo (assets/images/pbxcarmona.png) right below the caption. When hasImage is false or left out, I used SizedBox.shrink() instead. Doing it this way kept text-only posts clean and prevented an awkward empty gap from showing up where a picture would normally be.

I also kept the post photo separate from the author's profile picture by passing it through a profileImage parameter—using assets/icons/hpfp.png for my own post and assets/icons/pbpfp.png for the other one. Inside the card, CircleAvatar loads whichever image gets passed in, and falls back to a default person icon if none is provided, which makes the card reusable for different users without rewriting the layout.

Lastly, the small avatar next to "Write a comment..." is meant for the person commenting rather than the post author. Since assets/icons/hpfp.png is set directly inside the card widget right now, my own icon shows up on the comment bar across all posts, which feels realistic since I'm the one browsing and interacting with the feed.

