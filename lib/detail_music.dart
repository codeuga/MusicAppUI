import 'package:flutter/material.dart';
import 'package:musicapp_ui/data.dart';

class DetailMusic extends StatelessWidget {
  final ListPlaylist item;
  const DetailMusic({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F0817),
      body: Stack(
        children: [
          Positioned(
            top: -185,
            left: 181,
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
            top: 750,
            left: -180,
            child: Transform.scale(
              scale: 2.7,
              child: Image.asset(
                'assets/ellipse.png',
                height: 434.32,
                width: 346.69,
              ),
            ),
          ),
          Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, top: 70, right: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Image.asset("assets/chevron-left.png")),
                            Image.asset('assets/more-horizontal.png')
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          item.gambar,
                          width: 342,
                          height: 333,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.nama,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  item.deskripsi,
                                  style: TextStyle(
                                    color: Color(0xffA5A5A5),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            Image.asset("assets/heart.png")
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Slider(
                          value: 40,
                          max: 100,
                          min: 0,
                          onChanged: (value) {},
                          activeColor: Colors.white,
                          inactiveColor: Color(0xffA5A5A5),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '1:24',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              item.durasi,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/shuffle.png'),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset('assets/skip-back.png'),
                            Image.asset('assets/pause btn.png'),
                            Image.asset('assets/skip-forward.png'),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset('assets/repeat.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
