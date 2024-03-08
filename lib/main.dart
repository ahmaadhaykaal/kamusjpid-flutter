import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kamusjepangindo/Model/ModelKosakata.dart';
import 'package:kamusjepangindo/PageDetail.dart';
import 'package:kamusjepangindo/PageSearch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kamus Kosakata Jepang - Indonesia untuk Sehari-hari',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PageUtama(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageUtama extends StatefulWidget {
  const PageUtama({super.key});

  @override
  State<PageUtama> createState() => _PageUtamaList();
}

class _PageUtamaList extends State<PageUtama> {

   Future<List<Datum>?> getList() async{
    try{
      http.Response res = await http.get(Uri.parse('http://192.168.1.4/kamusjpid/getList.php'));
      return modelKosakataFromJson(res.body).data;
    }catch(e){
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(e.toString()))
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: const Text(
          'Kosa Kata Jepang-Indonesia Sehari-hari',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PageSearch();
              }
              ));
            },
          ),
        ],
      ),
      
      body: FutureBuilder(
        future: getList(),
        builder: (BuildContext context, AsyncSnapshot<List<Datum>?> snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index){
                Datum? data = snapshot.data?[index];
                return Padding(
                  padding: const EdgeInsets.all(1),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)
                            => PageDetail(data)
                          ));
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text("${data?.kosakata}",
                              style: const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            subtitle: Text("${data?.arti}",
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.black54
                              ),
                            ),

                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }else if (snapshot.hasError){
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }else{
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.orange,
              ),
            );
          }
        },
      ),
    );
  }
}
