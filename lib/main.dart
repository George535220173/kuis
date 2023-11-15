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
              padding: const EdgeInsets.only(left: 165),
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
                  Text(
                    'Semua Produk',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Promosi',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Nama Produk',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_upward),
                  Text(
                    'Terlaris',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            // Detail produk
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: [
                  buildProductCard('Susu Dancow', 'https://www.dancow.co.id/sites/default/files/2023-07/20230228_WL_NI_DANCOW%20FORTIGRO%20NEWSCALE%20IN%20780GR_A1_0003_1.png', 20000.0),
                  buildProductCard('Beras Sania', 'https://pangan.pastisania.com/app/uploads/2022/02/Beras-sania-25kg.png', 25000.0),
                  buildProductCard('Minyak Sania', 'https://assets.klikindomaret.com/products/10010804/10010804_1.jpg', 28000.0),
                  buildProductCard('Stella Car Perfurme', 'https://stellacms.stella-airfreshener.com//upload-gambar-produk/produk/H25lBw_Stella%20Car%20Perfume%20-%20Energyc%20Purple.png', 41500.0),
                  buildProductCard('Gajah Minyak Kayu Putih', 'https://images.k24klik.com/product/large/apotek_online_k24klik_20210504101159359225_GAJAH-MKP-6OML.jpg', 15300.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProductCard(String name, String imageUrl, double price) {
    return Container(
      width: 150,
      child: Card(
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              height: 104,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('\RP $price'),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol keranjang ditekan
                    },
                    child: Text('+ Keranjang'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
