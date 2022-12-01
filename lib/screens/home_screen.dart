import 'package:flutter/material.dart';
import 'package:social_media_ui/data/data.dart';
import 'package:social_media_ui/models/user_model.dart';
import 'package:social_media_ui/widgets/following_user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "FRENZY",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
            letterSpacing: 10.0,
          ),
        ),
        bottom: TabBar(
          indicatorWeight: 3.0,
          labelColor: Theme.of(context).primaryColor,
          labelStyle:
              const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          unselectedLabelStyle: const TextStyle(fontSize: 18.0),
          controller: _tabController,
          tabs: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Trending"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Latest"),
            ),
          ],
        ),
      ),
      body: ListView(children: const [
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          child: Text(
            "Following",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
        ),
        FollowingUser()
      ]),
    );
  }
}
