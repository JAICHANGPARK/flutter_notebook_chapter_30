import 'package:flutter/material.dart';

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
            children: [],
          )
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
