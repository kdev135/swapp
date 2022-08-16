import "package:flutter/material.dart";
import 'package:swapp/constants.dart';
import 'package:swapp/styles.dart';


// This is the screen that shows the details of a product and a bid button.
class ViewProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton(color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0,
      
      ),
      bottomNavigationBar: Card(
        child: Padding(
          padding: pagePadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: ElevatedButton(onPressed: (){}, child: Text("Place bid",))),
              Expanded(flex:1,child: Icon(Icons.favorite, color: Colors.grey,)),
        
            ]
          ),
        ),
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
            ListTile(leading:Text("Name goes here", style: productLableText,), trailing: Text("Ksh. 2000")),
            Text("description of the product")

          ],

        ),
      ),
    );

  }
}
