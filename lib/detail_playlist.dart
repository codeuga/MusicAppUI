import 'package:flutter/material.dart';
import 'package:musicapp_ui/data.dart';
import 'package:musicapp_ui/detail_music.dart';

class DetailPlaylist extends StatelessWidget {
  const DetailPlaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F0817),
      body: Stack(
        children: [
          Positioned(
            top: -8,
            left: -27,
            child: Transform.scale(
              scale: 2.7,
              child: Image.asset(
                'assets/ellipse.png',
                height: 438,
                width: 457,
              ),
            ),
          ),
          Positioned(
            top: 900,
            left: 250,
            child: Transform.scale(
              scale: 4,
              child: Image.asset(
                'assets/ellipse.png',
                height: 212,
                width: 192,
              ),
            ),
          ),
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 343,
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(30),
                      ),
                      child: Image.asset(
                        'assets/rectangle90.png', // Path ke gambar
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 343,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(30),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0x00000000), Color(0xff000000)],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 170,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child:
                                      Image.asset('assets/chevron-left.png')),
                              Image.asset('assets/more-horizontal.png')
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "R&B Playlist",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  'Chill your mind',
                                  style: TextStyle(
                                      color: Color(0xffA5A5A5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset("assets/heart.png"),
                                SizedBox(
                                  width: 15,
                                ),
                                Image.asset("assets/play btn.png")
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 25, right: 30),
                  child: listPlaylist.isNotEmpty
                      ? ListView.builder(
                          itemCount: listPlaylist.length,
                          itemBuilder: (context, index) {
                            final item = listPlaylist[index];
                            return Padding(
                              padding: EdgeInsets.only(bottom: 15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    PageRouteBuilder(
                                      transitionDuration:
                                          Duration(milliseconds: 400),
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          DetailMusic(item: item),
                                      transitionsBuilder: (context, animation,
                                          secondaryAnimation, child) {
                                        var begin = Offset(0.0, 1.0);
                                        var end = Offset.zero;

                                        var curve = Curves.ease;
                                        var tween = Tween(
                                                begin: begin, end: end)
                                            .chain(CurveTween(curve: curve));

                                        return SlideTransition(
                                          position: animation.drive(tween),
                                          child: child,
                                        );
                                      },
                                    ),
                                  );
                                },
                                child: Row(
                                  children: [
                                    Image.asset(item.gambar),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item.nama,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            item.deskripsi,
                                            style: TextStyle(
                                              color: Color(0xffA5A5A5),
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      item.durasi,
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      : Center(
                          child: Text(
                            'Data tidak tersedia',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
