import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HitungGaya(),
  ));
}

class HitungGaya extends StatefulWidget {
  @override
  State<HitungGaya> createState() => _HitungGayaState();
}

class _HitungGayaState extends State<HitungGaya> {
  TextEditingController massa = TextEditingController();
  TextEditingController percepatan = TextEditingController();

  double gaya = 0;

  void hitungGaya() {
    double m = double.tryParse(massa.text) ?? 0;
    double a = double.tryParse(percepatan.text) ?? 0;

    setState(() {
      gaya = m * a;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menghitung Gaya"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Rumus Gaya",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "F = m x a",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 20),
            TextField(
              controller: massa,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Massa (kg)",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: percepatan,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Percepatan (m/s²)",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: hitungGaya,
              child: Text("Hitung Gaya"),
            ),
            SizedBox(height: 20),
            Text(
              "Hasil Gaya = $gaya N",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
