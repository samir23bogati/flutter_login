import 'package:calculator/components/custom_roundedbtm.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ButtonExample extends StatefulWidget {
  const ButtonExample({super.key});

  @override
  State<ButtonExample> createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  ExpansionTileController controller = ExpansionTileController();
  bool switchValue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
           CustomRoundedButton(
            label:"My Button",
            onPressed: (){
              if (controller.isExpanded){
                controller.collapse();
              }else{
                controller.expand();
              }
            }
           ),
           ExpansionTile(
            title: Text("Foods Blog",
            style: TextStyle(
              fontSize: 35,
            ),
            ),
            backgroundColor: Colors.red,
            collapsedBackgroundColor: Colors.blue,
            controller: controller,
            childrenPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
            children: [
              Text(
                Faker().lorem.sentences(5).join(" "),
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
            )
          ],
        ),
      ),
    );
  }
}