import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:swapp/constants.dart';
import 'package:swapp/models/reusable_textfield.dart';

class UploadProductScreen extends HookWidget {
  const UploadProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          child: Padding(
            padding: pagePadding,
            child: Column(
              mainAxisSize: MainAxisSize.max,
             
              children: [
                Placeholder(fallbackWidth: double.infinity,
                fallbackHeight: 250,),
                SizedBox(height: 10,),
                Row(
                  
                  children: [
                    Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Camera"))),
                    SizedBox(width: 5,),
                    Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Gallery"))),
                    
                  ],
                ),
               SizedBox(height: 20,),
                    ReusableTextField(hintText: "Name of item", labelText: "Name of Item",),
                    ReusableTextField(hintText: "Amount in Ksh. eg. 1000, 3000",labelText: "Estimated value",textInputType: TextInputType.numberWithOptions(decimal: true,signed:false ),),
                    ReusableTextField(hintText: "Eg. books, electronics, games, furniture ", labelText: "Tags",),
                    ReusableTextField(labelText: "Product details",hintText: "",maxLines: 10,textInputType: TextInputType.multiline,)
        
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
