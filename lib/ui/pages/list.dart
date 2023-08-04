import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rick_morty_flutter/widgets/characters.dart';
import 'package:rick_morty_flutter/widgets/appbar.dart';
import 'package:rick_morty_flutter/ui/pages/details.dart';
import 'dart:convert';

class HomePageList extends StatefulWidget {
  @override
  _HomePageListState createState() => _HomePageListState();
}

class _HomePageListState extends State<HomePageList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarItem(title: 'Lista de Personagens'),
      body: FutureBuilder(
        future: _fetchCharacters(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(
                child: Text('Erro ao carregar os dados da api'));
          } else {
            List characters = snapshot.data;

            return ListView.builder(
              itemCount: characters.length,
              itemBuilder: (BuildContext context, int index) {
                final character = characters[index];
                return CharactersInfo(
                  name: character['name'],
                  imageUrl: character['image'],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailScreen(character: character),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }

  Future<List<dynamic>> _fetchCharacters() async {
    final response = await http
        .get(Uri.parse('https://rickandmortyapi.com/api/character?page=1'));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data['results'];
    } else {
      throw Exception('Falha ao carregar os personagens');
    }
  }
}
