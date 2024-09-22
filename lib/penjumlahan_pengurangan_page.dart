import 'package:flutter/material.dart';

class PenjumlahanPenguranganPage extends StatefulWidget {
  @override
  _PenjumlahanPenguranganPageState createState() => _PenjumlahanPenguranganPageState();
}

class _PenjumlahanPenguranganPageState extends State<PenjumlahanPenguranganPage> {
  String _display = "0";
  String _operand = "";
  String _value1 = "";
  String _value2 = "";

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        _display = "0";
        _operand = "";
        _value1 = "";
        _value2 = "";
      } else if (buttonText == "+" || buttonText == "-") {
        _value1 = _display;
        _operand = buttonText;
        _display = "0";
      } else if (buttonText == "=") {
        _value2 = _display;
        double num1 = double.parse(_value1);
        double num2 = double.parse(_value2);
        double result;

        if (_operand == "+") {
          result = num1 + num2;
        } else if (_operand == "-") {
          result = num1 - num2;
        } else {
          result = 0.0;
        }

        _display = result.toString();
      } else {
        _display = _display == "0" ? buttonText : _display + buttonText;
      }
    });
  }

  Widget _buildButton(String buttonText) {
    return Expanded(
      child: OutlinedButton(
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 24),
        ),
        onPressed: () => _buttonPressed(buttonText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Penjumlahan dan Pengurangan'),
        backgroundColor: Colors.pink[200],
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
            child: Text(
              _display,
              style: const TextStyle(fontSize: 48),
            ),
          ),
          const Expanded(
            child: Divider(),
          ),
          Column(
            children: [
              Row(
                children: [
                  _buildButton("7"),
                  _buildButton("8"),
                  _buildButton("9"),
                  _buildButton("/"),
                ],
              ),
              Row(
                children: [
                  _buildButton("4"),
                  _buildButton("5"),
                  _buildButton("6"),
                  _buildButton("x"),
                ],
              ),
              Row(
                children: [
                  _buildButton("1"),
                  _buildButton("2"),
                  _buildButton("3"),
                  _buildButton("-"),
                ],
              ),
              Row(
                children: [
                  _buildButton("0"),
                  _buildButton("C"),
                  _buildButton("="),
                  _buildButton("+"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
