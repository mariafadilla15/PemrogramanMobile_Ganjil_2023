import 'package:flutter/material.dart';
import 'package:uts_linkaja/main.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(30.0),
            child: const Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('MARIA FADILLA', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                      Text('6285654132589'),
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 231, 231, 231),
                  radius: 35.0,
                  child: Text(
                    'MF',
                    style: TextStyle(color: Color.fromARGB(255, 99, 99, 99), fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12.0),
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              itemCount: 4,
              separatorBuilder: (context, index) => const Divider(color: Colors.grey),
              itemBuilder: (context, index) {
                List<String> titles = [
                  'Tipe Akun',
                  'Pengaturan Akun',
                  'LinkAja Syariah',
                  'Metode Pembayaran',
                ];

                List<String> contents = [
                  'Full Service',
                  '',
                  'Tidak Aktif',
                  '',
                ];

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        titles[index],
                        style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            contents[index],
                            style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                          ),
                          const Icon(Icons.chevron_right, color: Colors.red),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12.0),
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              itemCount: 4,
              separatorBuilder: (context, index) => const Divider(color: Colors.grey),
              itemBuilder: (context, index) {
                List<String> titles = [
                  'Email',
                  'Pertanyaan Keamanan',
                  'Pengaturan PIN',
                  'Bahasa',
                ];

                List<String> contents = [
                  'mariafadilla@gmail.com',
                  'Sudah Diatur',
                  '',
                  'Indonesia',
                ];

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        titles[index],
                        style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            contents[index],
                            style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                          ),
                          const Icon(Icons.chevron_right, color: Colors.red),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12.0),
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              itemCount: 3,
              separatorBuilder: (context, index) => const Divider(color: Colors.grey),
              itemBuilder: (context, index) {
                List<String> titles = [
                  'Ketentuan Layanan',
                  'Kebijakan Privasi',
                  'Pusat Layanan',
                ];

                List<String> contents = [
                  '',
                  '',
                  '',
                ];

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        titles[index],
                        style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            contents[index],
                            style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                          ),
                          const Icon(Icons.chevron_right, color: Colors.red),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12.0),
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                'Keluar',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: const Text(
                'LinkAja v.4.32.1',
                style: TextStyle(
                  color: Color.fromARGB(255, 99, 99, 99),
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
      bottomNavigationBar: const Navbar(4),
    );
  }
}