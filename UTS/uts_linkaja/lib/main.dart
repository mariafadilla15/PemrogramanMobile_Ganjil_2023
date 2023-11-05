import 'package:flutter/material.dart';
import 'history.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Menonaktifkan teks "Debug"
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Ini adalah indeks untuk dot Indicator 
  int _navbarIndex = 0; // Ini adalah indeks untuk BottomNavigationBar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 223, 223),
      body: Stack(
        children: [
          ListView(
            children: [
              // Logo
              Stack(
                children: [
                  Container(
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://www.evpoint.lk/pg/img/background-buildings.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 20.0, left: 10.0),
                            child: const Image(
                              image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/LinkAja.svg/120px-LinkAja.svg.png'),
                              width: 45,
                              height: 45,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 18.0, left: 10.0, right: 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: 40,
                                height: 40,
                                child: const Icon(
                                  Icons.local_play_outlined,
                                  size: 28,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 18.0, right: 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: 40,
                                height: 40,
                                child: const Icon(
                                  Icons.favorite_border_outlined,
                                  size: 28,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  // Informasi profil dan Saldo
                  Container(
                    margin: const EdgeInsets.only(top: 95.0, left: 15.0, right: 15.0),
                    width: double.infinity,
                    height: 133,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 219, 54, 42),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20.0, top: 15.0),
                          child: const Text(
                            'Hi, MARIA FADILLA',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20.0, top: 14.0),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 15.0),
                                padding: const EdgeInsets.all(10.0),
                                width: 130,
                                height: 65,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: const Color.fromARGB(255, 178, 49, 49),
                                      width: 1.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'Your Balance',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const Text(
                                          'Rp. 10.000',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(width: 7),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(255, 190, 47, 37),
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                            size: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 5.0),
                                padding: const EdgeInsets.all(10.0),
                                width: 130,
                                height: 65,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: const Color.fromARGB(255, 178, 49, 49),
                                      width: 1.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'Bonus Balance',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const Text(
                                          'Rp. 0',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(width: 7),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(255, 190, 47, 37),
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                            size: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // quick menu transaksi
              Container(
                height: 80,
                margin: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_card_outlined, size: 30),
                          SizedBox(height: 5),
                          Text("TopUp"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.send_to_mobile_outlined, size: 30),
                          SizedBox(height: 5),
                          Text("Send Money"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.confirmation_num_outlined, size: 30),
                          SizedBox(height: 5),
                          Text("Ticket Code"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.widgets_outlined, size: 30),
                          SizedBox(height: 5),
                          Text("See All"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // menu dan fitur lain
              Container(
                margin: const EdgeInsets.only(top: 15.0, left: 15.0),
                padding: const EdgeInsets.all(5),
                child: Wrap(
                  spacing: 38.0, // Atur jarak horizontal antara item
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Colors.red, Colors.blue], 
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            border: Border.all(color: Colors.white, width: 5.0),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          width: 55,
                          height: 55,
                          child: const Icon(
                            Icons.phonelink_ring_rounded,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text("Pulsa/Data"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Colors.red, Colors.blue], 
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            border: Border.all(color: Colors.white, width: 5.0),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          width: 55,
                          height: 55,
                          child: const Icon(
                            Icons.flash_on,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text("Electricity"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Colors.red, Colors.blue], 
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            border: Border.all(color: Colors.white, width: 5.0),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          width: 55,
                          height: 55,
                          child: const Icon(
                            Icons.badge,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text("BPJS"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Colors.red, Colors.blue], 
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            border: Border.all(color: Colors.white, width: 5.0),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          width: 55,
                          height: 55,
                          child: const Icon(
                            Icons.games,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text("mgames"),
                      ],
                    ),
                  ]
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0, left: 17.0),
                padding: const EdgeInsets.all(5),
                child: Wrap(
                  spacing: 32.0, // Atur jarak horizontal antara item
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Colors.red, Colors.blue], 
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            border: Border.all(color: Colors.white, width: 5.0),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          width: 55,
                          height: 55,
                          child: const Icon(
                            Icons.connected_tv,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text("Cabel TV \n & Internet"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 12.0),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Colors.red, Colors.blue], 
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            border: Border.all(color: Colors.white, width: 5.0),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          width: 55,
                          height: 55,
                          child: const Icon(
                            Icons.opacity,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text("PDAM"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Colors.red, Colors.blue], 
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            border: Border.all(color: Colors.white, width: 5.0),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          width: 55,
                          height: 55,
                          child: const Icon(
                            Icons.credit_card,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text("Kartu Uang \n Elektronik"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Colors.red, Colors.blue], 
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            border: Border.all(color: Colors.white, width: 5.0),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          width: 55,
                          height: 55,
                          child: const Icon(
                            Icons.more_horiz,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text("More"),
                      ],
                    ),
                  ],
                ),
              ),

              //Slider Image
              CarouselSlider(
                items: [
                  // Gambar pertama
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://www.linkaja.id/uploads/images/promo//YW50aWtvZGVfXzE2OTg4MTI4ODlfd2ViLWJhbm5lci03OTR4MzY2LTIwMjMtMTAtMzF0MjMxMzU1LTEwNS1qcGc.jpg'),
                                fit: BoxFit.cover, 
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Gambar kedua 
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://cdn.linkaja.com/website/posts/January2023/1675149129-PAID%20ADS%201920x1080-asuransi.jpg'),
                                fit: BoxFit.cover, 
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Gambar ketiga 
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://cdn.linkaja.com/website/posts/November2023/1699011985-WEB%20BANNER%20794x366%20-%202023-11-03T184202.272.jpg'),
                                fit: BoxFit.cover, 
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Gambar keempat
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://www.linkaja.id/uploads/images/promo//YW50aWtvZGVfXzE2OTg3Njg3Mzhfd2ViLWJhbm5lci03OTR4MzY2LTIwMjMtMTAtMzF0MjMxMTM5LTQ1Mi1qcGc.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index; // Perbarui _currentIndex setiap kali halaman berubah
                    });
                  },
                  height: 150.0, // Sesuaikan tinggi slider
                  initialPage: 0, // Halaman awal yang ditampilkan
                  enableInfiniteScroll: true, // Aktifkan gulir manual slider
                  autoPlay: true, // Auto play slider
                  autoPlayInterval: const Duration(seconds: 5), // Interval waktu auto play
                  autoPlayAnimationDuration: const Duration(milliseconds: 800), // Durasi animasi auto play
                  viewportFraction: 0.9, // Lebar tampilan gambar yang terlihat
                  aspectRatio: 16 / 9, // Rasio aspek gambar
                ),
              ),

              //Dots Indicator pada Slider 
              Container(
                margin: const EdgeInsets.only(left: 28.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List<Widget>.generate(4, (index) {
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index ? Colors.red : Colors.grey,
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Navbar(_navbarIndex),
    );
  }
}

class Navbar extends StatelessWidget {
  final int _navbarIndex;

  const Navbar(this._navbarIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 10,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            currentIndex: _navbarIndex,
            selectedItemColor: Colors.red,
            unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
            onTap: (index) {
              if (index == 0) {
                Navigator.pop(context);
              } else if (index == 1) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const History()));
              }
            },
            items: [
              itemBar(Icons.home_outlined, "Home"),
              itemBar(Icons.sticky_note_2_outlined, "History"),
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 28,
                  height: 28,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.qr_code,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                label: "Bayar",
              ),
              itemBar(Icons.mail_outlined, "Inbox"),
              itemBar(Icons.account_circle_outlined, "Account"),
            ],
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem itemBar(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}