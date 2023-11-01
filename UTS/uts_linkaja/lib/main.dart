// ignore_for_file: sized_box_for_whitespace

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
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(right: 20.0),
                  child: const Image(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/LinkAja.svg/120px-LinkAja.svg.png'),
                    width: 36,
                    height: 36,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 36, // Set the height of the Icon
                      child: const Icon(
                        Icons.local_offer_outlined,
                        size: 36,
                      ),
                    ),
                    Container(
                      width: 36, // Set the width of the Icon
                      height: 36, // Set the height of the Icon
                      child: const Icon(
                        Icons.favorite_border_outlined,
                        size: 36,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.red, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      'Hi, Maria Fadilla',
                      style: TextStyle(
                        color: Color.fromARGB(255, 19, 2, 2), //none
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 5.0),
                          padding: const EdgeInsets.all(10.0),
                          width: 150,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your Balance',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rp. 10.000',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(15.0),
                          width: 150,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bonus Balance',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '0',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    child: const Column(children: [
                      Icon(Icons.add_card_outlined),
                      Text("TopUp"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: const Column(children: [
                      Icon(Icons.money),
                      Text("Send Money"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: const Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("Ticket Code"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: const Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("See All"),
                    ]),
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}