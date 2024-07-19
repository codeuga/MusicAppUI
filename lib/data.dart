class ListPlaylist {
  final String gambar;
  final String nama;
  final String deskripsi;
  final String durasi;

  ListPlaylist({
    required this.gambar,
    required this.nama,
    required this.deskripsi,
    required this.durasi,
  });
}

List<ListPlaylist> listPlaylist = [
  ListPlaylist(
    gambar: 'assets/rectangle95.png',
    nama: 'You right',
    deskripsi: 'Doja Cat, The Weeknd',
    durasi: '3:58',
  ),
  ListPlaylist(
    gambar: 'assets/Rectangle 80.png',
    nama: '2 AM',
    deskripsi: 'Arizona Zervas',
    durasi: '3:03',
  ),
  ListPlaylist(
    gambar: 'assets/rectangle91.png',
    nama: 'Baddest',
    deskripsi: '2 Chainz, Chris Brown"',
    durasi: '3:51',
  ),
  ListPlaylist(
    gambar: 'assets/rectangle92.png',
    nama: 'True Love',
    deskripsi: 'Kanye West',
    durasi: '4:52',
  ),
  ListPlaylist(
    gambar: 'assets/rectangle93.png',
    nama: 'Bye Bye',
    deskripsi: 'Marshmello, Juice WRLD',
    durasi: '2:09',
  ),
  ListPlaylist(
    gambar: 'assets/rectangle94.png',
    nama: 'Hands on you',
    deskripsi: 'Austin George',
    durasi: '3:56',
  ),
];
