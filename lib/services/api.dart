import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;


class Api{


Future<dynamic>get ({required String url})async{
http.Response response=await http.get(Uri.parse(url));
if(response.statusCode==200){
  return jsonDecode(response.body);

}
else {
  throw Exception('There is an error in status code${response.statusCode}');
}
}
Future<dynamic>post({required String url,@required dynamic body }) async{


http.Response response =await http.post(
  Uri.parse(url),headers: {
        'Content-Type': 'application/json', 
      },
      body: jsonEncode(body), 
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      
     Map<String,dynamic> data =jsonDecode(response.body);
      print(data);
      return data ; 
    } else {
      throw Exception('Error: Status code ${response.statusCode}');
    }
  }
  Future<dynamic>put({required String url,@required dynamic body }) async{


http.Response response =await http.put(
  Uri.parse(url),headers: {
        'Content-Type': 'application/json', 
      },
      body: jsonEncode(body), 
    );
print('url= $url body = $body');
    if (response.statusCode == 200 || response.statusCode == 201) {
      Map<String,dynamic> data =jsonDecode(response.body);
      print(data);
      return data ; 
    } else {
      throw Exception('Error: Status code ${response.statusCode}');
    }
  }
}