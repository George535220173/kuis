import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
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
        backgroundColor: Colors.red, 
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
            SizedBox(width: 40), 
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: Colors.white, 
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
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
                        Row(
                          children: [
                            Icon(
                              Icons.people,
                            ),
                            SizedBox(width: 8),
                            Opacity(
                              opacity: 0.7,
                              child: Text('1000 Pengikut'),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    90), 
                          ),
                          child: Text('Mengikuti'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 35, left: 20), 
                      child: Icon(Icons.share_outlined),
                    ),
                  ],
                ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 200,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: [
                    buildCarouselImage(
                        'https://www.hercodigital.id/wp-content/uploads/2021/10/jasa-kolaboratif-marketplace-hercodigital.jpg'),
                    buildCarouselImage(
                        'https://lagikreatif.com/wp-content/uploads/2022/06/1.cara-iklan-jasa-di-marketplace-facebook.jpg'),
                    buildCarouselImage(
                        'https://d39wptbp5at4nd.cloudfront.net/media/166821_original_marketing-iklan-jawa-pos-group.jpg'),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Belanja Berdasarkan Kategori',
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
                  buildCategoryImage('Elektronik',
                      'https://ds393qgzrxwzn.cloudfront.net/cat1/img/images/0/mrzDoNGUPY.jpg'),
                  buildCategoryImage('Fashion',
                      'https://www.mokapos.com/blog/_next/image?url=https%3A%2F%2Fwp.mokapos.com%2Fwp-content%2Fuploads%2F2023%2F02%2Fcara-foto-baju-untuk-jualan-4-1.jpg&w=3840&q=75'),
                  buildCategoryImage('Baby Wipes',
                      'https://i5.walmartimages.com/asr/8f7a86a0-8f7d-43f5-9aa9-c3509f4eefc2.2ca338d742530a54c4328e2eb3c37d49.jpeg'),
                  buildCategoryImage('Buku',
                      'https://images.theconversation.com/files/45159/original/rptgtpxd-1396254731.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1356&h=668&fit=crop'),
                ],
              ),
            ),
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
                  TextButton(
                    onPressed: () {
                    },
                    child: Text(
                      'Promosi',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  Container(
                    height: 20, 
                    width: 1,
                    color: Colors.black, 
                  ),
                  TextButton(
                    onPressed: () {
                    },
                    child: Text(
                      'Nama Produk',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  Icon(Icons.arrow_upward),
                  Icon(Icons.arrow_downward),
                  Container(
                    height: 20, 
                    width: 1, 
                    color: Colors.black, 
                  ),
                  TextButton(
                    onPressed: () {
                    },
                    child: Text(
                      'Terlaris',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration:
                            TextDecoration.underline, // Tambahkan garis bawah
                        decorationColor: Colors.blue, // Warna garis bawah
                        decorationThickness: 2, // Ketebalan garis bawah
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                spacing: 18.0,
                runSpacing: 18.0,
                children: [
                  buildProductCard(
                      'Susu Dancow',
                      'https://www.dancow.co.id/sites/default/files/2023-07/20230228_WL_NI_DANCOW%20FORTIGRO%20NEWSCALE%20IN%20780GR_A1_0003_1.png',
                      20000.0),
                  buildProductCard(
                      'Beras Sania',
                      'https://pangan.pastisania.com/app/uploads/2022/02/Beras-sania-25kg.png',
                      25000.0),
                  buildProductCard(
                      'Minyak Sania',
                      'https://assets.klikindomaret.com/products/10010804/10010804_1.jpg',
                      28000.0),
                  buildProductCard(
                      'Stella Car Perfurme',
                      'https://stellacms.stella-airfreshener.com//upload-gambar-produk/produk/H25lBw_Stella%20Car%20Perfume%20-%20Energyc%20Purple.png',
                      41500.0),
                  buildProductCard(
                      'Gajah Minyak Kayu Putih',
                      'https://images.k24klik.com/product/large/apotek_online_k24klik_20210504101159359225_GAJAH-MKP-6OML.jpg',
                      15300.0),
                  buildProductCard(
                      'Gajah Minyak Kayu Putih',
                      'https://id-test-11.slatic.net/p/c84aa30150804e860d3141ea2f14160f.jpg',
                      15300.0),
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
      width: 160,
      child: Card(
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              height: 105,
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

  Widget buildCategoryImage(String category, String imageUrl) {
    return InkWell(
      onTap: () {
      },
      child: Column(
        children: [
          Image.network(
            imageUrl,
            height: 75,
            width: 75,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),
          Text(category),
        ],
      ),
    );
  }
    Widget buildCarouselImage(String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
