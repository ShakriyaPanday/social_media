import 'package:flutter/material.dart';
import 'package:social_media_ui/data/data.dart';
import 'package:social_media_ui/screens/home_screen.dart';
import 'package:social_media_ui/screens/login_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  _buildDrawerOption(Icon icons, String text, VoidCallback ontap) {
    return ListTile(
      leading: icons,
      title: Text(
        text,
        style: const TextStyle(fontSize: 20.0),
      ),
      onTap: ontap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Image(
                height: 200.0,
                width: double.infinity,
                fit: BoxFit.cover,
                image: AssetImage(currentUser.backgroundImageUrl),
              ),
              Positioned(
                bottom: 20.0,
                left: 20.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 3.0, color: Theme.of(context).primaryColor),
                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(currentUser.profileImageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      currentUser.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          _buildDrawerOption(
              const Icon(Icons.dashboard),
              "Home",
              (() => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const HomePage()))))),
          _buildDrawerOption(const Icon(Icons.message), "Chat", (() {})),
          _buildDrawerOption(const Icon(Icons.location_on), "Map ", (() {})),
          _buildDrawerOption(
              const Icon(Icons.account_circle), "Your Profile", (() {})),
          _buildDrawerOption(const Icon(Icons.settings), "Settings", (() {})),
          Expanded(
              child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: _buildDrawerOption(
                const Icon(Icons.directions_run),
                "Logout",
                (() => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const LoginPage()))))),
          ))
        ],
      ),
    );
  }
}
