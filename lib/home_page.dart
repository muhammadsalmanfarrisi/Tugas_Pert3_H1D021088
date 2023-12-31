import 'package:flutter/material.dart';
import 'package:prak3/sidemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var namauser;
  void _loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    namauser = prefs.getString('username');
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _loadUsername();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      drawer: const Sidemenu(),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle,
              size: 100,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            Text(
              'Selamat datang, Bagi pengunjung yang cantik dan ganteng, Salam sejahtera',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              '$namauser',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Text(
              'Daftar Item:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildItemCard('Praktikum Mingu Pertama',
                'Pada praktikum minggu ini membahas tentang dart'),
            _buildItemCard('Praktikum Mingu Kedua',
                'Pada praktikum minggu ini mulai membahas tentang flutter'),
            _buildItemCard('Praktikum Mingu Ketiga',
                'Pada praktikum ini membahas mengenai localdisk, side menu, login, dan route. Inilah hasil tugasnya'),
          ],
        ),
      ),
    );
  }

  Widget _buildItemCard(String title, String description) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          description,
          style: TextStyle(fontSize: 16),
        ),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          // Tambahkan aksi yang sesuai ketika item di-tap di sini
        },
      ),
    );
  }
}
