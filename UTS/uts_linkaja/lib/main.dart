import 'package:flutter/material.dart';

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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 223, 223),
      body: ListView(
        children: [

          // Logo
          Stack(
            children: [
              Container(
                height: 120,
                color: const Color.fromARGB(173, 181, 181, 181),
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
                height: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 219, 54, 42),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, top: 18.0),
                      child: const Text(
                        'Hi, MARIA FADILLA',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, top: 16.0),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 15.0),
                            padding: const EdgeInsets.all(10.0),
                            width: 130,
                            height: 75,
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
                            height: 75,
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
                      Icon(Icons.airplane_ticket_outlined, size: 30),
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
            margin: const EdgeInsets.only(top: 20.0, left: 15.0),
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 80,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: 50,
                        height: 50,
                        child: const Icon(
                          Icons.phonelink_ring_rounded,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text("Pulsa/Data"),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: 50,
                        height: 50,
                        child: const Icon(
                          Icons.flash_on,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text("Electricity"),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: 50,
                        height: 50,
                        child: const Icon(
                          Icons.badge,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text("BPJS"),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: 50,
                        height: 50,
                        child: const Icon(
                          Icons.games,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text("mgames"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12.0, left: 15.0),
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 80,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: 50,
                        height: 50,
                        child: const Icon(
                          Icons.wifi,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text("Cabel TV \n & Internet"),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: 50,
                        height: 50,
                        child: const Icon(
                          Icons.opacity,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text("PDAM"),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: 50,
                        height: 50,
                        child: const Icon(
                          Icons.credit_card,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text("Kartu Uang \n Elektronik"),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: 50,
                        height: 50,
                        child: const Icon(
                          Icons.more_horiz,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text("More"),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}