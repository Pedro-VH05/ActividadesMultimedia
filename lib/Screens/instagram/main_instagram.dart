import 'package:actividad4/Screens/instagram/feed.dart';
import 'package:actividad4/Screens/instagram/footer.dart';
import 'package:actividad4/Screens/instagram/header.dart';
import 'package:actividad4/Screens/instagram/profile.dart';
import 'package:actividad4/Screens/instagram/stories.dart';
import 'package:actividad4/main.dart';
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
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
              (route) => false,
            );
          },
        ),
        title: const Text('pedro.vh05'),
      ),
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
