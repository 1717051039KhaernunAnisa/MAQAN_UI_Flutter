import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/core/MyFlutterApp.dart';
import 'package:shop_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 10,
              )
            ]),
        child: BottomNavigationBar(
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.black26,
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  MyFlutterApp.home,
                  color: Colors.redAccent,
                ),
              ),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.favorite,
                color: kTextColor,
              ),
              title: Text("Favorite"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.shopping_cart,
                color: kTextColor,
              ),
              title: Text("Cart"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.account_circle,
                color: kTextColor,
              ),
              title: Text("Account"),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
