import "package:flutter/material.dart";
import 'package:swapp/constants.dart';

class ViewProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton(color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0,
      
      ),
      body: Padding(
        padding: pagePadding,
        child: Column(
         
          children: [
            Container(
              height: 200,
              width: double.maxFinite,
              color: Colors.blue,
            
            ),
            SizedBox(height: 10,),
            ListTile(leading:Text("Name goes here"), trailing: Icon(Icons.favorite, color: Colors.grey,),),
            Text("description of the product")

          ],

        ),
      ),
    );

  }
}
