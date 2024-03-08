import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PageSearch extends StatefulWidget {
  const PageSearch({super.key});

  @override
  State<PageSearch> createState() => _PageSearchState();
}

class _PageSearchState extends State<PageSearch> {
  TextEditingController _searchController = TextEditingController();
  List<dynamic> _kosakataList = [];
  List<dynamic> _filteredKosakataList = [];

  @override
  void initState() {
    super.initState();
    fetchKosakata();
  }

  Future<void> fetchKosakata() async {
    final response = await http.get(Uri.parse('http://192.168.1.4/kamusjpid/getList.php'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      setState(() {
        _kosakataList = responseData['data'];
        _filteredKosakataList = _kosakataList;
      });
    } else {
      throw Exception('Failed to load Data');
    }
  }

  void _filterKosakata(String query) {
    setState(() {
      _filteredKosakataList = _kosakataList
          .where((kosakata) =>
          kosakata['kosakata'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cari Kosakata'),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                _filterKosakata(value);
              },
              decoration: InputDecoration(
                labelText: 'Cari',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredKosakataList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(_filteredKosakataList[index]['kosakata']),
                    subtitle: Text(_filteredKosakataList[index]['arti']),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}