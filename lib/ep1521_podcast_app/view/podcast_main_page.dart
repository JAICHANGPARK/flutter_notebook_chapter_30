import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1521_podcast_app/view/podcast_download_page.dart';
import 'package:flutter_notebook_chapter_30/ep1521_podcast_app/view/podcast_home_page.dart';

class PodcastMainPage extends StatefulWidget {
  const PodcastMainPage({Key? key}) : super(key: key);

  @override
  State<PodcastMainPage> createState() => _PodcastMainPageState();
}

class _PodcastMainPageState extends State<PodcastMainPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: IndexedStack(
            index: _index,
            children: [
              const PodcastHomePage(),
              const PodcastDownloadPage(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          currentIndex: _index,
          onTap: (idx) {
            setState(() {
              _index = idx;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color.fromRGBO(103, 65, 255, 1),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.download,
                ),
                label: "Download"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore_outlined,
                ),
                label: "Discover"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Profile")
          ],
        ),
      ),
    );
  }
}
