import "package:flutter/material.dart";
import 'package:swapp/components.dart';
import 'package:swapp/constants.dart';
import 'package:swapp/screens/bid_offer_screen.dart';
import 'package:swapp/styles.dart';

// This is the screen that shows the details of a product and a bid button.
class ViewProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final name = args[0];
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: Card(
        elevation: 5,
        child: Padding(
          padding: pagePadding,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
                flex: 2,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => BidOfferScreen(),
                          ));
                    },
                    child: Text(
                      "Place bid",
                    ))),
            Expanded(
                flex: 1,
                child: Icon(
                  Icons.favorite,
                  color: Colors.grey,
                )),
          ]),
        ),
      ),
      body: Padding(
        padding: pagePadding,
        child: Column(
          children: [
            Image.asset(
                  args["imagePath"],
                  width:double.infinity,
                 height: 200,
                  fit: BoxFit.contain,
                ),
            SizedBox(
              height: 10,
            ),
            ListTile(
                leading: Text(
                  args["label"],
                  style: productLableText,
                ),
                trailing: Text(args["price"].toString())),
            Text("description of the product")
          ],
        ),
      ),
    );
  }
}
