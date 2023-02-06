import 'package:api/models/post_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

 class Postprovider extends ChangeNotifier {
  Postmodel post=Postmodel(userid: 0, id: 0, todo: " ", complete: true);


  Future getPost() async {
   try {
    var response = await Dio().get(
        "https://dummyjson.com/todos/1");
   post= Postmodel.fromjson(response.data);
   notifyListeners();
   }
   catch (e) {
    print(e);
   }
  }
 }