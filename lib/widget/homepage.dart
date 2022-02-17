import 'package:flutter/material.dart';
import 'package:gojek_clone/design/colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SearchBar(),
        CardGopay(),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
                color: const Color.fromARGB(10, 22, 6, 6),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.black12, width: 1)),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.search_outlined,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  "Cari Makanan dan Minuman",
                  style: TextStyle(color: Colors.black38),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(1000),
          child: Image.asset(
            "lib/assets/gimnas.png",
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}

class CardGopay extends StatelessWidget {
  const CardGopay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      child: Container(
        height: 96,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.only(left: 12),
                height: 78,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    IconWithLabel(
                      "Gopay",
                      icon: Icons.wallet_giftcard_rounded,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Rp500.099",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Tap for History",
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColors.green,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            const itemCardGopay(
              "Pay",
              icon: Icons.payment_rounded,
            ),
            const itemCardGopay(
              "Top Up",
              icon: Icons.add_box_rounded,
            ),
            const itemCardGopay(
              "Explore",
              icon: Icons.explore_rounded,
            )
          ],
        ),
      ),
    );
  }
}

class itemCardGopay extends StatelessWidget {
  const itemCardGopay(this.text, {Key? key, this.icon = Icons.abc})
      : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0),
      child: Column(
        children: [
          Icon(
            icon,
            size: 32,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class IconWithLabel extends StatelessWidget {
  const IconWithLabel(this.text,
      {Key? key, this.icon = Icons.abc, this.iconSize = 16})
      : super(key: key);

  final IconData icon;
  final String text;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 6.0, 8.0, 0),
      child: Row(
        children: [
          Icon(
            icon,
            size: iconSize,
            color: AppColors.blue,
          ),
          SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
