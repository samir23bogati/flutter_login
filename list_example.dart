import 'package:flutter/material.dart';

class ListExampleScreen extends StatelessWidget {
  const ListExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisExtent: 150,
          mainAxisSpacing: 10,
          crossAxisSpacing: 20,
          ),
          itemCount: 230,
          itemBuilder: (BuildContext context, int index){
            return Container(
              color:Colors.blue
            );
          },

      )
    );
  }
}