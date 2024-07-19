import 'package:flutter/material.dart';
import 'package:musicapp_ui/detail_playlist.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xff0F0817),
        body: Stack(
          children: [
            Positioned(
              top: 275,
              left: -140,
              child: Transform.scale(
                scale: 2.7,
                child: Image.asset(
                  'assets/ellipse.png',
                  height: 416,
                  width: 430,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 70, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome back!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "What do you feel like today",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffA5A5A5),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: Color(0xff433E48),
                            hintText: 'Search song, playlist, artist...',
                            hintStyle: TextStyle(
                                color: Color(0xffA5A5A5), fontSize: 16),
                            prefixIcon: Image.asset("assets/search.png"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      TabBar(
                        padding: EdgeInsets.only(left: 13),
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFC22BB7),
                              Color(0xFF922FF5),
                            ],
                          ),
                        ),
                        tabs: [
                          Tab(text: 'Recent'),
                          Tab(text: 'Top 50'),
                          Tab(text: 'Chill'),
                          Tab(text: 'R&B'),
                          Tab(text: 'Festival'),
                        ],
                        labelPadding: EdgeInsets.only(left: 0, right: 0),
                        labelStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                        labelColor: Colors.white,
                        unselectedLabelColor: Color(0xffA5A5A5),
                        indicatorPadding: EdgeInsets.only(
                            bottom: 10, top: 35, left: 15, right: 15),
                        indicatorSize: TabBarIndicatorSize.tab,
                      ),
                      Expanded(
                        child: TabBarView(
                          physics: BouncingScrollPhysics(),
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Padding(
                                      padding: const EdgeInsets.all(25.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context).push(
                                                    PageRouteBuilder(
                                                      pageBuilder: (context,
                                                              animation,
                                                              secondaryAnimation) =>
                                                          DetailPlaylist(),
                                                      transitionsBuilder:
                                                          (context,
                                                              animation,
                                                              secondaryAnimation,
                                                              child) {
                                                        var begin =
                                                            Offset(1.0, 0.0);
                                                        var end = Offset.zero;
                                                        var curve = Curves.ease;

                                                        var tween = Tween(
                                                                begin: begin,
                                                                end: end)
                                                            .chain(CurveTween(
                                                                curve: curve));

                                                        return SlideTransition(
                                                          position: animation
                                                              .drive(tween),
                                                          child: child,
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
                                                child: Image.asset(
                                                    "assets/rectangle90.png"),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "R&B Playlist",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                "Chill your mind",
                                                style: TextStyle(
                                                  color: Color(0xffA5A5A5),
                                                  fontSize: 14,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                  "assets/rectangle87.png"),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "Daily Mix 2",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                "Made for you",
                                                style: TextStyle(
                                                  color: Color(0xffA5A5A5),
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, top: 25, right: 30),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Your favourites",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                                "assets/rectangle83.png"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Bye Bye",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Marshmello, Juice WRLD",
                                                    style: TextStyle(
                                                      color: Color(0xffA5A5A5),
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              "2:09",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                                "assets/rectangle88.png"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "I Like You",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Post Malone, Doja Cat",
                                                    style: TextStyle(
                                                      color: Color(0xffA5A5A5),
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              "4:03",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                                "assets/rectangle89.png"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Fountains",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Drake, Tems",
                                                    style: TextStyle(
                                                      color: Color(0xffA5A5A5),
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              "3:18",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Center(child: Text('Top 50 Content')),
                            Center(child: Text('Chill Content')),
                            Center(child: Text('R&B Content')),
                            Center(child: Text('Festival Content')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
