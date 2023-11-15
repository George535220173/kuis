import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red, // Warna merah untuk appbar
        leading: Icon(Icons.arrow_back),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Godrej'),
            Padding(
              padding: const EdgeInsets.only(left: 160),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 8),
                  Icon(Icons.shopping_cart),
                ],
              ),
            ),
            SizedBox(width: 40), // Atur sesuai kebutuhan
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo dan informasi Godrej
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    // Logo Godrej
                    backgroundImage: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Godrej_Logo.svg/2560px-Godrej_Logo.svg.png'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Godrej',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.people,
                      ),
                      Opacity(
                        opacity: 0.7,
                        child: Text('1000 Pengikut'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Aksi ketika tombol diikuti ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  100), // Sesuaikan lebar sesuai kebutuhan
                        ),
                        child: Text('Ikuti'),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.share),
                ],
              ),
            ),
            // Navigasi produk
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Semua Produk',style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ),
              Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Promosi', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Nama Produk', style: TextStyle(fontWeight: FontWeight.bold), 
                  ),
                  Icon(Icons.arrow_upward),
                  Text('Terlaris', style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            // Detail produk
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Detail Produk 1'),
                  // Informasi detail produk 1
                  // ...
                  SizedBox(height: 16),
                  Text('Detail Produk 2'),
                  // Informasi detail produk 2
                  // ...
                  // dan seterusnya
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
