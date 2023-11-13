import 'package:flutter/material.dart';
import 'package:uts_linkaja/main.dart';

class Inbox extends StatefulWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      // Ketika tab berubah, ubah status tebal atau tidak berdasarkan indeks tab aktif
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> notifications = [
      {
        'time': 'Sen, 14:07',
        'title': 'Info LinkAja',
        'detail': 'Dana atas trx C4677E9B0Y di PT.GRAB teah berhasil dikembalikan pada 06/11/2023 14:07:33, sebesar Rp.9.000,00. Saldo Anda Rp.19.000,00. Info linkaja.id',
      },
      {
        'time': 'Sen, 13:58',
        'title': 'INFO',
        'detail': 'Nominal transaksi sementara di PT.GRAB Rp9.000. Setelah transaksi selesai, saldo akan terpotong sesuai transaksi. Info linkaja,id',
      },
      {
        'time': 'Sen, 13:56',
        'title': 'Info LinkAja',
        'detail': 'Maaf, PIN atau kata sandi Anda salah, silahkan periksa dan coba lagi.',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Inbox',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        bottom: TabBar(
          indicatorColor: const Color.fromARGB(255, 244, 0, 0),
          controller: _tabController,
          tabs: [
            Tab(
              child: Text(
                'Notification',
                style: TextStyle(
                  color: _tabController.index == 0 ? Colors.black : Colors.black,
                  fontWeight: _tabController.index == 0 ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Information',
                style: TextStyle(
                  color: _tabController.index == 1 ? Colors.black : Colors.black,
                  fontWeight: _tabController.index == 1 ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Notification
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: ListView.separated(
              itemCount: notifications.length,
              separatorBuilder: (context, index) => const Divider(color: Colors.grey, indent: 16, endIndent: 16),
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notifications[index]['time']!,
                        style: const TextStyle(fontSize: 12.0),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        notifications[index]['title']!,
                        style: const TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        notifications[index]['detail']!,
                        style: const TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          // Information
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://cdn.linkaja.com/website/asset/400.png',
                  width: 300,
                  height: 200,
                ),
                const SizedBox(height: 0),
                const Text(
                  'There is No Information Right Now!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Any information will appear in this page',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Navbar(3),
    );
  }
}