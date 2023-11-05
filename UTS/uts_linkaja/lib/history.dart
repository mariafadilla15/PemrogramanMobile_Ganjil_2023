import 'package:flutter/material.dart';
import 'package:uts_linkaja/main.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> with SingleTickerProviderStateMixin {
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
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Transaction History',
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
                  'Pending',
                  style: TextStyle(
                    color: _tabController.index == 0
                        ? Colors.black // Tab aktif - bold
                        : Colors.black, // Tab non-aktif
                    fontWeight: _tabController.index == 0 ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Done',
                  style: TextStyle(
                    color: _tabController.index == 1
                        ? Colors.black // Tab aktif - bold 
                        : Colors.black, // Tab non-aktif
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
            // Pending
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
                    'All Transaction is Completed!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Any pending transaction will appear in this page',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            // Tab "Done"
            Padding(
              padding: const EdgeInsets.all(16.0), 
              child: ListView(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.green),
                      title: Text('Kirim ke Bank'),
                      subtitle: Text('Bank BRI 357897535\nWAVIANDRA XAVIERO\nRp 100.000\n\n10 November 2023 20:51:22'),
                      trailing: Text('Berhasil', style: TextStyle(color: Colors.green)),
                    ),
                  ),
                  const SizedBox(height: 10), 
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.green),
                      title: Text('Bayar Merchant'),
                      subtitle: Text('085695432589\nWARUNG SIMBAH\nRp 20.000\n\n22 Apr 2020 13:33:47'),
                      trailing: Text('Berhasil', style: TextStyle(color: Colors.green)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const Navbar(1),
      ),
    );
  }
}