import 'package:flutter/material.dart';
import 'user_model.dart';

class DaftarLoginPage extends StatelessWidget {
  final List<User> userList;

  DaftarLoginPage({required this.userList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Login'),
        backgroundColor: Colors.pink[200],
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Username: ${userList[index].username}'),
            subtitle: Text('Password: ${userList[index].password}'),
          );
        },
      ),
    );
  }
}
