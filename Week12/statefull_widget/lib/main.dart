import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false, // Menonaktifkan teks "Debug"
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;

  _konversiSuhu() {
    setState(() {
      _kelvin = _inputUser + 273;
      _reamur = _inputUser * 4 / 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Konverter Suhu"),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Masukkan Suhu Dalam Celcius",
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              onChanged: (String str) {
                setState(() {
                  _inputUser = double.parse(str);
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.only(top: 200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Suhu dalam Kelvin', style: TextStyle(fontSize: 18)),
                  Text('Suhu dalam Reamor', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('$_kelvin', style: const TextStyle(fontSize: 40)),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('$_reamur', style: const TextStyle(fontSize: 40)),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _konversiSuhu,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Konversi Suhu', style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}