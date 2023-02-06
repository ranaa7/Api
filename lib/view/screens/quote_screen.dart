

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/quote_provider.dart';

class Quotescreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider1 = Provider.of<Quoteprovider>(context);
    return Scaffold(body: ListView.builder(itemCount: provider1.quote.length,itemBuilder:(context, index) {
      return Card(child: ListTile(
        title: Text(provider1.quote[index].author.toString()),
        subtitle:  Text(provider1.quote[index].id.toString()),
      ),);
    }) );
  }
}
