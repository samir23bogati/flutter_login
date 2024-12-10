import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:ListView.builder(
       itemCount:5 ,
       physics:AlwaysScrollableScrollPhysics(),
       itemBuilder: (context,index){
        return ListTile(
          title:Text(Faker().person.name()),

        );
       },
    ),
    );
  }
}