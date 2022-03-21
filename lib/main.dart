import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gojek_clone/design/colors.dart';
import 'package:gojek_clone/widget/homepage.dart';

void main() => runApp(const GojekApp());

class GojekApp extends StatefulWidget {
  const GojekApp({Key? key}) : super(key: key);

  @override
  _GojekAppState createState() => _GojekAppState();
}

class _GojekAppState extends State<GojekApp> {
  List tapBarMenu = ["Beranda", "Promo", "Pesanan", "Chat"];
  int selectedIndex = 2;
  int tapBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.green,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AppColors.green,
          ),
          title: NavBar(),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Homepage(),
        ),
      ),
    );
  }

  Widget NavBar() {
    return Container(
      height: 40,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 5),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      decoration: BoxDecoration(
          color: AppColors.darkgreen, borderRadius: BorderRadius.circular(100)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        itemNavBar(0),
        itemNavBar(1),
        itemNavBar(2),
        itemNavBar(3),
      ]),
    );
  }

  Widget itemNavBar(int index) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: (index == selectedIndex) ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                tapBarMenu[index],
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: (index == selectedIndex)
                        ? AppColors.darkgreen
                        : Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
