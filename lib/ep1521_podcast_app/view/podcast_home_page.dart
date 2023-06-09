import 'package:flutter/material.dart';

class PodcastHomePage extends StatefulWidget {
  const PodcastHomePage({Key? key}) : super(key: key);

  @override
  State<PodcastHomePage> createState() => _PodcastHomePageState();
}

class _PodcastHomePageState extends State<PodcastHomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 24,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dreamwalker",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text("Enjoy your favorite podcast."),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                ),
                child: const Icon(
                  Icons.notifications_none,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            "Listen Your",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Favorite",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                TextSpan(
                  text: " Podcast",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Color.fromRGBO(103, 65, 255, 1),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 160,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(103, 65, 255, 1),
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("TOP CHART OF THE DAY"),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Stuff You Should Know",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  width: 100,
                  height: 32,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(205, 242, 3, 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.play_circle),
                      SizedBox(
                        width: 6,
                      ),
                      Text("Play now")
                    ],
                  ),
                )
              ],
            ),
          ),
          // SizedBox(height: 8,),
          const Text(
            "Listen Podcast",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.transparent,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(
                          text: "Recent🔥",
                        ),
                        Tab(
                          text: "Topic",
                        ),
                        Tab(
                          text: "Authors",
                        ),
                        Tab(
                          text: "Episodes",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: 240,
                      child: TabBarView(
                        children: [
                          ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 200,
                                margin: const EdgeInsets.only(right: 16),
                                decoration: BoxDecoration(
                                  color: Colors.orange[100],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 90,
                                          width: 80,
                                          decoration:
                                              BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Dream\nWalker",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                            Text("Podcast"),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Text("Flutter Development"),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Text("1 hours left"),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(12),
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(205, 242, 3, 1),
                                      ),
                                      child: const Icon(
                                        Icons.play_circle,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                          Container(),
                          Container(),
                          Container(),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
