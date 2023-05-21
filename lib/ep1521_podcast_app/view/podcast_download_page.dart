import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
        title: const Text("Download"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Pending Download",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              height: 200,
              color: Colors.orange,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 160,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: const BoxDecoration(
                      color: Colors.pink,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.red,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Flutter Development",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text("Podcast Flutter"),
                        const SizedBox(
                          height: 6,
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "75%",
                            textAlign: TextAlign.end,
                          ),
                        ),
                        LinearPercentIndicator(
                          padding: EdgeInsets.zero,
                          percent: 0.75,
                          progressColor: Colors.purple,
                          backgroundColor: Colors.black,
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 10,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Your Download",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "View All",
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      children: [
                        Container(
                          height: 84,
                          width: 84,
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Modern Android Development"),
                              Text("Podcast Android"),
                            ],
                          ),
                        ),
                        CircleAvatar(),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
