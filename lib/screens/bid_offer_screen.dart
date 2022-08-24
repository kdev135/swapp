import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:swapp/components.dart';
import 'package:swapp/constants.dart';
import 'package:swapp/styles.dart';

class BidOfferScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    var _selectedChip = useState("");
    return Scaffold(
        appBar: appBar,
        body: Padding(
          padding: pagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: Image.asset(
                          args["imagePath"],
                          width: 100,
                          height: 100,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            args["label"],
                            style: productLableText.copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Cash value: ${args["price"]}",
                            style: productDetailText,
                          ),
                          Text(
                            "Tags: tv, electronics,entertainment",
                            overflow: TextOverflow.ellipsis,
                            style: productDetailText,
                          ),
                          Text("ID : #24053f", style: productDetailText.copyWith(color: Colors.grey))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // End of bid product card
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  "Select your offer",
                  style: titleText,
                ),
              ),
              Row(
                children: [
                  ReusableChip(
                    label: "Item",
                    currentChoice: _selectedChip,
                  ),
                  ReusableChip(
                    label: "Cash",
                    currentChoice: _selectedChip,
                  ),
                  ReusableChip(
                    label: "Item + cash",
                    currentChoice: _selectedChip,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class ReusableChip extends HookWidget {
  ReusableChip({Key? key, required this.label, required this.currentChoice}) : super(key: key);
  final String label;

  ValueNotifier<String> currentChoice = useState("");

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ChoiceChip(
        label: Text(
          label,
          style: chipTextStyle.copyWith(color: currentChoice.value.toString() == label ? Colors.white : Colors.black),
        ),
        selected: currentChoice.value.toString() == label ? true : false,
        selectedColor: Colors.lightBlue,
        disabledColor: Colors.grey,
        onSelected: (value) {
          currentChoice.value = label;
        },
      ),
    );
  }
}
