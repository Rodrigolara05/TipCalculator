import 'package:flutter/material.dart';
import 'CalculadorPropinaClass.dart';

void main() {
  runApp(new MaterialApp(
    title: "Calculadora de propina 1",
    home: new CalculadorPropina(),
    theme: ThemeData(
      primaryColor: Colors.green[600]
    ),
  ));
}