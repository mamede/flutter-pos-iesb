import 'package:rick_morty_flutter/ui/pages/list.dart';
import 'package:rick_morty_flutter/widgets/info.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Rick & Morty',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: HomePageList(),
    debugShowCheckedModeBanner: false,
  ));
}
