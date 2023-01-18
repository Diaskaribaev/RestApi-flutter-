import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices{


  Future<void> getPost() async {
    final url = 'https://api.escuelajs.co/api/v1/users';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200){
      final json = jsonDecode(response.body) as List;
      final result = json ;


    }else{

    }
  }













}