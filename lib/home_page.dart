import 'package:flutter/material.dart';
import 'cek_bilangan_page.dart';
import 'penjumlahan_pengurangan_page.dart';
import 'daftar_login_page.dart';
import 'user_model.dart';

class HomePage extends StatelessWidget {
  final List<User> userList;

  HomePage({required this.userList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mari Berhitung'),
        backgroundColor: Colors.pink[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[300],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DaftarLoginPage(userList: userList)),
                );
              },
              child: const Text('Daftar Login'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[300],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CekBilanganPage()),
                );
              },
              child: const Text('Cek Bilangan (Genap/Ganjil)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[300],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PenjumlahanPenguranganPage()),
                );
              },
              child: const Text('Penjumlahan/Pengurangan'),
            ),
          ],
        ),
      ),
    );
  }
}
