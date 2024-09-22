import 'package:flutter/material.dart';

class CekBilanganPage extends StatefulWidget {
  @override
  _CekBilanganPageState createState() => _CekBilanganPageState();
}

class _CekBilanganPageState extends State<CekBilanganPage> {
  final TextEditingController _controller = TextEditingController();
  String _result = '';

  void _cekBilangan() {
    int? number = int.tryParse(_controller.text);
    if (number == null) {
      setState(() {
        _result = 'Masukkan bilangan yang valid!';
      });
    } else {
      setState(() {
        if (number % 2 == 0) {
          _result = '$number adalah bilangan Genap';
        } else {
          _result = '$number adalah bilangan Ganjil';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cek Bilangan Genap/Ganjil'),
        backgroundColor: Colors.pink[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan Bilangan',
                filled: true,
                fillColor: Colors.pink[100],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink[300]),
              onPressed: _cekBilangan,
              child: const Text('Cek Bilangan'),
            ),
            const SizedBox(height: 20),
            Text(
              _result,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
