

import 'package:api/models/quote_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Quoteprovider extends ChangeNotifier{
  // Quotemodel quote=Quotemodel(id: 0, quote: " ", author: " ");
  List<Quotemodel>quote=[];

  Quoteprovider(){
    getquote();
  }

  Future getquote() async {
    try{
    var response=await Dio().get("https://dummyjson.com/quotes");
    quote= List<Quotemodel>.from(response.data["quotes"].map((x)=>Quotemodel.fromJson(x)));
    notifyListeners();
  }
    catch(e){print(e);}

}
}
