import 'package:flutter/material.dart';
import 'package:prak3/sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      drawer: const Sidemenu(),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 70,
              child: Icon(
                Icons.info_outline,
                size: 100,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Tentang Aplikasi',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Aplikasi ini adalah contoh aplikasi Flutter sederhana yang telah mengimplementasikan route, login, side menu, dan local disk. Aplikasi ini saya dedikasikan untuk tugas praktikum. Saya juga dedikasikan aplikasi ini untuk asprak asprak tercinta',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              'Kontak Kami',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, size: 30, color: Colors.blue),
                const SizedBox(width: 10),
                Text(
                  'Email: muhammad.farrisi@mhs.unsoed.ac.id',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone, size: 30, color: Colors.blue),
                const SizedBox(width: 10),
                Text(
                  'Telepon: +6285747931816',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Tambahkan aksi yang sesuai ketika tombol ditekan di sini
              },
              icon: Icon(
                Icons.mail,
                color: Colors.white,
              ),
              label: Text(
                'Hubungi Kami',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
