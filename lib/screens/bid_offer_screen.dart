import 'package:flutter/material.dart';
import 'package:swapp/components.dart';

class BidOfferScreen extends StatelessWidget{

  @override
Widget build(BuildContext context) {
  return Scaffold(

    appBar: appBar,
    body:Column(
      children: [
        Card(
         
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Container(height: 100,

          width: 100,
          color: Colors.blue,),
          SizedBox(width: 5,),

          Column(
           
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              Text("Awesome Tv"),
              Text("Tags: tv, electronics,entertainment", overflow: TextOverflow.fade,),
              Text("Cash value: ksh.20000"),


            ],
          ),
            ],
          )),
      ],
    )
  );

}
}


