import 'package:social_media_ui/models/user_model.dart';

class Post {
  final String imageUrl;
  final OtherUser author;
  final String title;
  final String location;
  final int likes;
  final int comments;

  Post(
      {required this.imageUrl,
      required this.author,
      required this.title,
      required this.location,
      required this.likes,
      required this.comments});
}
