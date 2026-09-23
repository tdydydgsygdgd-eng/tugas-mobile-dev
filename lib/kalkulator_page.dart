import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class kalkulatorpage extends StatefulWidget {
  const kalkulatorpage({super.key});

  @override
  State<kalkulatorpage> createState() => _kalkulatorpageState();
}

class _kalkulatorpageState extends State<kalkulatorpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' kaytofox kalkulator Page')),
      body: Column(
        children: [
  Container(
    margin: EdgeInsets.all(10),
    child: TextField(
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: const InputDecoration(labelText: 'Angka 1'),
    ),
  ),
  Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(labelText: 'Angka 2'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(onPressed: () {}, child: const Text('+', style: TextStyle(fontSize: 34, color: Color.fromARGB(255, 26, 123, 73))))),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(onPressed: () {}, child: const Text('-', style: TextStyle(fontSize: 34, color: Color.fromARGB(255, 26, 123, 73))))),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(onPressed: () {}, child: const Text('×', style: TextStyle(fontSize: 34, color: Color.fromARGB(255, 26, 123, 73))))),
            ElevatedButton(onPressed: () {}, child: const Text('÷', style: TextStyle(fontSize: 34, color: Color.fromARGB(255, 26, 123, 73)))),
           ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text('Hasil: ', style: TextStyle(fontSize: 34, color: Color.fromARGB(255, 123, 26, 92)))),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(onPressed: () {}, child: const Text('RISET', style: TextStyle(fontSize: 20
              , color: Color.fromARGB(255, 26, 123, 73))))),
        ],
      ),
    );
  }
}