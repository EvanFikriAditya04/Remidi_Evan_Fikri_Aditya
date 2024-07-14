import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, String>> students = [
    {'name': 'Muhammad Ardiansyah Saputra', 'nim': 'STI202102591'},
    {'name': 'Buang Apipudin', 'nim': 'STI202102597'},
    {'name': 'Mohammad Faiz', 'nim': 'STI202102601'},
    {'name': 'Afif Mutaqim', 'nim': 'STI202102602'},
    {'name': 'Fuad Sururi', 'nim': 'STI202102191'},
    {'name': 'Evan Fikri Aditya', 'nim': 'STI202102109'},
    {'name': 'Unikul Kholillah', 'nim': 'STI202102112'},
    {'name': 'Adit Febri Nur Hidayat', 'nim': 'STI202102123'},
    {'name': 'Shafira Indes Prafitri', 'nim': 'STI202102125'},
    {'name': 'Zahwa Naca Syafika', 'nim': 'STI202102132'},
    {'name': 'Rahayu Dwi Setyowati', 'nim': 'STI202102133'},
  ];

  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
    Colors.cyan,
    Colors.pink,
    Colors.teal,
    Colors.amber,
    Colors.lime,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Mahasiswa'),
        ),
        body: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: colors[index % colors.length], // Warna latar belakang dari daftar warna
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                title: Text(
                  students[index]['name']!,
                  style: TextStyle(color: Colors.white), // Warna teks
                ),
                subtitle: Text(
                  students[index]['nim']!,
                  style: TextStyle(color: Colors.white), // Warna teks
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}