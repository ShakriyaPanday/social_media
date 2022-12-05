import 'package:flutter/material.dart';
import 'package:social_media_ui/data/data.dart';
import 'package:social_media_ui/models/user_model.dart';

class FollowingUser extends StatelessWidget {
  const FollowingUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 10.0),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          OtherUser user = users[index];
          return GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(10.0),
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 6.0,
                  ),
                ],
                border: Border.all(
                  width: 2.0,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              child: ClipOval(
                child: Image(
                  height: 60.0,
                  width: 60.0,
                  image: AssetImage(user.profileImageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
