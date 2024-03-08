import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kamusjepangindo/Model/ModelKosakata.dart';

class PageDetail extends StatelessWidget {
  final Datum? data;
  const PageDetail(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Kosakata'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text("${data?.kosakata}",
                              style: const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            subtitle: Text("${data?.detail}",
                              maxLines: 5,
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black54
                              ),
                            ),

                          )
                        ],
                      ),
                    ),
      ),
    );
  }
}