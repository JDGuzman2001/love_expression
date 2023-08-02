import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';




Future<List<dynamic>> getflowersinformation() async {
  //var url = Uri.parse('https://plannery-cars-api-h3obt5tzea-uc.a.run.app/get_cars_information');  
  var url = Uri.parse('http://127.0.0.1:8080/get_flowers_information');  
  var response = await http.get(
    url,
    headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
  );
  var responseJson = jsonDecode(const Utf8Decoder().convert(response.bodyBytes));  
  

  List<dynamic> flowersList = [];

  for (var flower in responseJson){
    var price = flower['Price'];
    var image = flower['Imagen'];
    var rosas = flower['No_rosas'];
    var girasoles = flower['No_girasoles'];

    
    flowersList.add(
      {
        'Price': price,
        'Imagen': image,
        'No_rosas': rosas,
        'No_girasoles': girasoles,
        
      }
    );

    
  }
  
  return flowersList;
}