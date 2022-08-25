import "package:flutter/material.dart";
import 'package:swapp/components.dart';
import 'package:swapp/constants.dart';
import 'package:swapp/styles.dart';

// This is the screen that shows the details of a product and a bid button.
class ViewProduct extends StatelessWidget {
  const ViewProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    String desc =
        "There was a time when this wouldn't have bothered her. The fact that it did actually bother her bothered her even more. What had changed in her life that such a small thing could annoy her so much for the entire day? She knew it was ridiculous that she even took notice of it, yet she was still obsessing over it as she tried to fall asleep.";

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
                      Navigator.pushNamed(context, "/bidScreen", arguments: args);
                      
                    },
                    child: const Text(
                      "Place bid",
                    ))),
            const Expanded(
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
        child: ListView(
          shrinkWrap: true,
          children: [
            Image.asset(
              args["imagePath"],
              width: double.infinity,
              height: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  args["label"],
                  style: productLableText.copyWith(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  "Ksh. ${args["price"].toString()}",
                  style: productLableText,
                  overflow: TextOverflow.fade,
                )
              ],
            ),
            Text(
              desc,
              style: productLableText,
              overflow: TextOverflow.fade,
            )
          ],
        ),
      ),
    );
  }
}
