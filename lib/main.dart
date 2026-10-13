import 'dart:html';

import 'package:flutter/material.dart';

class Tes extends StatefulWidget {
  void main() {
    runApp(Tes());
  }

  @override
  State<Tes> createState() => Tes_State();
}

class Tes_State extends State<Tes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(children: [
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(children: [Text("No"), Text("Nama"), Text("Kelas")]),
                TableRow(
                    children: [Text("1"), Text("Hilda"), Text("XI PPLG 2")])
              ],
            )
          ]),
        ),
      ),
    );
  }
}
