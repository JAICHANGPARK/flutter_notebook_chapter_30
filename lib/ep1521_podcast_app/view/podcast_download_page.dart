import 'package:flutter/material.dart';

class PodcastDownloadPage extends StatefulWidget {
  const PodcastDownloadPage({Key? key}) : super(key: key);

  @override
  State<PodcastDownloadPage> createState() => _PodcastDownloadPageState();
}

class _PodcastDownloadPageState extends State<PodcastDownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Download"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pending Download",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              height: 200,
              color: Colors.orange,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 180,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                    ),
                    child: Column(
                      children: [],
                    ),
                  );
                },
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
