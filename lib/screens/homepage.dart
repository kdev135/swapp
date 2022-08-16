import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import "package:badges/badges.dart";
import 'package:swapp/components/product_card.dart';
import 'package:swapp/constants.dart';
import 'package:swapp/screens/view_product.dart';

class Homepage extends StatelessWidget {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(borderRadius: BorderRadius.circular(20));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(color: Colors.black, onPressed: () {}, icon: Icon(Icons.menu)),
          title: Center(
            child: SizedBox(height: 100, width: 100, child: SvgPicture.asset("images/swappLogo.svg")),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 10),
              child: Badge(
                  badgeContent: Text("5"),
                  badgeColor: Colors.lightBlue,
                  child: IconButton(color: Colors.black, onPressed: () {}, icon: const Icon(Icons.swap_horiz))), // Swap alerts 
            ),
          ],
        ),
        body: Padding(
          padding: pagePadding,
          child: ListView(
            shrinkWrap: true,
            children: [
              TextField(
                decoration: InputDecoration(
                  isDense: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  label: Text("data"),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  border: outlineInputBorder,
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                children:const [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

