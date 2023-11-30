import 'package:flutter/material.dart';
import 'package:use_widgets_example/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Use Widgets Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    ),
  );
}
