import 'package:api/provider/post_provider.dart';
import 'package:api/provider/quote_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Postprovider>(context);
    var provider1 = Provider.of<Quoteprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Post screen"),
      ),
      body: Column(children: [ListTile(
        title: Text(provider.post.todo),
        subtitle: Text(provider.post.complete.toString()),
      ),
        ListTile(
          title: Text(provider1.quote[2].author.toString()),
           subtitle:  Text(provider1.quote[1].id.toString()),
        ),],),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     provider.getPost();
      //     provider1.getquote();
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
