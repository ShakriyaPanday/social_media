import 'package:flutter/material.dart';
import 'package:social_media_ui/models/post_model.dart';

class PageCarousel extends StatelessWidget {
  final PageController pageController;
  final String title;
  final List<Post> posts;

  const PageCarousel(
      {super.key,
      required this.pageController,
      required this.title,
      required this.posts});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
