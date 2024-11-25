import 'package:actividad4/screens/instagram/feed.dart';
import 'package:actividad4/screens/instagram/footer.dart';
import 'package:actividad4/screens/instagram/header.dart';
import 'package:actividad4/screens/instagram/profile.dart';
import 'package:actividad4/screens/instagram/stories.dart';
import 'package:actividad4/screens/menu_lateral.dart';
import 'package:flutter/material.dart';

class InstagramApp extends StatelessWidget {
  const InstagramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const InstagramPage();
  }
}

class InstagramPage extends StatelessWidget {
  const InstagramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuLateral(),
      appBar: AppBar(
        title: const Text('pedro.vh05'),
      ),
      backgroundColor: Colors.white,
      body: ListView(
          children: const [
            ProfileHeader(),
            EditProfileButton(),
            SizedBox(height: 10),
            StoriesSection(),
            SizedBox(height: 20),
            PhotosGrid(),
          ],
        ),

        bottomNavigationBar: const InstagramFooter(),
    );
  }
}
