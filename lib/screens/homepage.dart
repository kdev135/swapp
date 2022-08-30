import "package:flutter/material.dart";
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:badges/badges.dart";
import 'package:swapp/models/product_card.dart';
import 'package:swapp/constants.dart';
import 'package:swapp/styles.dart';

class Homepage extends StatelessWidget {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(borderRadius: BorderRadius.circular(20));
  @override
  Widget build(BuildContext context) {
    const drawerPadding = EdgeInsets.only(left: 10.0);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: SizedBox(height: 100, width: 100, child: SvgPicture.asset("images/swappLogo.svg")),
          ),
          actions: [
            Padding(
              padding: drawerPadding,
              child: Badge(
                  badgeContent: const Text("5"),
                  badgeColor: kPrimaryColor,
                  child: IconButton(
                      color: Colors.black, onPressed: () {}, icon: const Icon(Icons.swap_horiz))), // Swap alerts
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: kPrimaryColor,
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: drawerPadding,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
<<<<<<< HEAD
                      children: [
=======
                      children:  [
>>>>>>> e02a482aee1435188b858521115b9f027dee1b18
                        const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.account_circle,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          height: 10,
                        ),
<<<<<<< HEAD
                        Text(
                          "Joe_3541",
                          style: defaultTextStyle,
                        ),
                        Text(
                          "joey354@email.com",
                          style: defaultTextStyle,
                        ),
=======
                         Text(
                          "Joe_3541",style: defaultTextStyle,
                        ),
                        Text("joey354@email.com", style: defaultTextStyle,),
>>>>>>> e02a482aee1435188b858521115b9f027dee1b18
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  )),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
<<<<<<< HEAD
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableDrawerTiles(icon: Icons.account_circle, title: "Profile", onTap: () {}),
                        ReusableDrawerTiles(icon: Icons.list, title: "My uploads", onTap: () {}),
                        ReusableDrawerTiles(
                            icon: Icons.logout,
                            title: "Logout",
                            onTap: () {
                              print("meeeh");
                              Navigator.pushNamed(context, "/registrationScreen");
                            }),
=======
                    padding: const EdgeInsets.only(top:20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                         ReusableDrawerTiles(icon:Icons.account_circle, title: "Profile",),
                        ReusableDrawerTiles(icon:Icons.list, title: "My uploads",),
                         ReusableDrawerTiles(icon:Icons.logout, title: "Logout",),
>>>>>>> e02a482aee1435188b858521115b9f027dee1b18
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: pagePadding,
          child: ListView(
            shrinkWrap: true,
            children: [
              TextField(
                decoration: InputDecoration(
                  isDense: true,
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search",
                  contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  border: outlineInputBorder,
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                mainAxisSpacing: 2,
                crossAxisCount: 2,
                children: [
                  ProductCard(
                    imagePath: "images/bag.jpg",
                    label: "bag",
                    price: 1500,
                  ),
                  ProductCard(
                    imagePath: "images/chair.jpg",
                    label: "chair",
                    price: 1300,
                  ),
                  ProductCard(
                    imagePath: "images/COD.jpg",
                    label: "Call of duty installer",
                    price: 1000,
                  ),
                  ProductCard(
                    imagePath: "images/gaming_chair.png",
                    label: "Awesome gaming chair",
                    price: 12500,
                  ),
                  ProductCard(
                    imagePath: "images/posh_chair.png",
                    label: "Sofa Chair",
                    price: 5000,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableDrawerTiles extends HookWidget {
<<<<<<< HEAD
  const ReusableDrawerTiles({Key? key, required this.title, required this.icon, this.onTap}) : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback? onTap;
=======
  const ReusableDrawerTiles({Key? key, required this.title, required this.icon}) : super(key: key);
  final String title;
  final IconData icon;
>>>>>>> e02a482aee1435188b858521115b9f027dee1b18

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
<<<<<<< HEAD
      onTap:  onTap,
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 10),
=======
      onTap: (() {
        
      }),
      child: ListTile(
        contentPadding: const EdgeInsets.only(left:10),
>>>>>>> e02a482aee1435188b858521115b9f027dee1b18
        leading: Icon(icon),
        title: Text(title),
      ),
    );
  }
}
