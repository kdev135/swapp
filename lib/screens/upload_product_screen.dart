import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:swapp/constants.dart';
import 'package:swapp/models/reusable_textfield.dart';
import 'package:image_picker/image_picker.dart';
import 'package:swapp/services/firebase_upload.dart';

class UploadProductScreen extends HookWidget {
  UploadProductScreen({Key? key}) : super(key: key);

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  // image pick fn.
  Future<String> getImage(var imgMethod) async {
    ImageSource method = imgMethod;
    final _picker = ImagePicker();
    XFile? image;
    String? file;
    image = await _picker.pickImage(source: method);
    file = image!.path;

    return file.toString();
  }

  @override
  Widget build(BuildContext context) {
    var _isloading = useState(false);
    var image = useState("");
    var name = useState("");
    var cashValue = useState("0");
    var tags = useState("");
    var details = useState("");
    return Scaffold(
      bottomNavigationBar: Card(
        elevation: 5,
        child: Padding(
          padding: pagePadding,
          child: _isloading.value
              ? Center(child: CircularProgressIndicator())
              : ElevatedButton(
                  child: Text("Upload"),
                  onPressed: (() {
                    _isloading.value = true;
                    // check that all fields are populated before upload
                    if (image.value != "" &&
                        name.value != "" &&
                        cashValue.value != "" &&
                        tags.value != "" &&
                        details.value != "") {
                      uploadImage(imagePath: image.value, imageName: name.value).then((value) {
                        _firebaseFirestore.collection("Products").add({
                          'imageUrl': value,
                          'name': name.value,
                          'tags': tags.value,
                          'cashValue': cashValue.value,
                          'ownerId': _auth.currentUser!.uid,
                        });
                      }).whenComplete(() {
                        _isloading.value = false;
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("product was uploaded successfully!"),
                        ));
                        Navigator.popUntil(context, ModalRoute.withName('/'));
                      });
                    } else {
                      _isloading.value = false;
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("All fields should be filled"),
                      ));
                    }
                  })),
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          child: Padding(
            padding: pagePadding,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                image.value == ""
                    ? Placeholder(
                        fallbackWidth: double.infinity,
                        fallbackHeight: 250,
                      )
                    : Image.file(
                        File(image.value),
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () async {
                              image.value = await getImage(ImageSource.camera);
                            },
                            child: Text("Camera"))),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () async {
                              image.value = await getImage(ImageSource.gallery);
                             
                            },
                            child: Text("Gallery"))),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ReusableTextField(
                  fieldVariable: name,
                  hintText: "Name of item",
                  labelText: "Name of Item",
                ),
                ReusableTextField(
                    fieldVariable: cashValue,
                    hintText: "Amount in Ksh. eg. 1000, 3000",
                    labelText: "Estimated value",
                    textInputType: TextInputType.number),
                ReusableTextField(
                  fieldVariable: tags,
                  hintText: "Eg. books, electronics, games, furniture ",
                  labelText: "Tags",
                ),
                ReusableTextField(
                  fieldVariable: details,
                  labelText: "Product details",
                  hintText: "",
                  maxLines: 7,
                  textInputType: TextInputType.text,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
