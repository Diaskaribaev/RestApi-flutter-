import 'package:flutter/material.dart';




class PostCard extends StatelessWidget {
  final int id;
  final String email;
  final String password;
  final String name;
  final String role;
  final String image;

  const PostCard({Key? key, required this.id, required this.email, required this.password, required this.name, required this.role, required this.image}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.pink),
      ),
      child:Column(
        children: [
          Image.network('$image'),
          Text('$id'),
          Text('$email'),
          Text('$password'),
          Text('$name'),
          Text('$role'),



        ],
      )



    );
  }
}
