import 'package:flutter/material.dart';
import 'package:formula/formulario.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cadastro de Seguro',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyForm()
    );
  }
}

