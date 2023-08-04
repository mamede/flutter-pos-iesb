import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre o aluno'),
      ),
      body: const Center(
        child: Card(
          margin: EdgeInsets.all(16.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Felipe Mamede',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Desenvolvedor',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'https://github.com/mamede',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Matrícula: 2373171025',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
