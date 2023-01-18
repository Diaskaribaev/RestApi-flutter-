import 'package:apipractice/widget/post_card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class PostList extends StatefulWidget {
  const PostList({Key? key}) : super(key: key);



  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  List items = [];

  @override
  void initState() {
    getPost();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posts from API'),),
      body: ListView.builder(
        itemBuilder: (context,index){
          final item = items[index];
        return PostCard(id: item['id'], email:item['email'].toString() , password: item['password'].toString(), name:  item['name'].toString(), role:  item['role'].toString(), image: item['image'].toString());
      },
        itemCount: items.length,



      )
    );
  }

  Future<void> getPost() async {
    final url = 'https://api.escuelajs.co/api/v1/users';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200){
      final json = jsonDecode(response.body) as List;
      final result = json ;
      setState(() {
        items = result;
      });

    }else{

    }
  }





}


