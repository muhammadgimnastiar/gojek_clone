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
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          SearchBar(),
          CardGopay(),
          IconList(),
          TitleSection(),
        ],
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "lib/assets/icon/gopaylater.png",
            height: 14,
          ),
          const SizedBox(height: 8),
          const Text(
            "Lebih Hemat Pakai GoPayLater",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          const Text(
              "Yuk, belanja di tokopedia pakai gopaylater. Untung belkan juta ",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
          const SizedBox(height: 15),
          const CardBanner(
            image: "lib/assets/banner/promo.png",
            text: "Aktifkan dan sambungkan gopay& gopaylater ke tokopedia",
          ),
          const CardBanner(
            image: "lib/assets/banner/tokped.png",
            text: "Aktifkan dan sambungkan gopay& gopaylater ke tokopedia",
          ),
          const CardBanner(
            image: "lib/assets/banner/tokped2.png",
            text: "Aktifkan dan sambungkan gopay& gopaylater ke tokopedia",
          ),
        ],
      ),
    );
  }
}

class CardBanner extends StatelessWidget {
  const CardBanner({Key? key, this.text = "", this.image = ""})
      : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Card(
        elevation: 2,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Ink.image(
                    height: 170,
                    image: AssetImage(image),
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20.0, top: 20, bottom: 10),
                child: Text(
                  "Makin Seru",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
                child: Text(
                  text,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                padding: const EdgeInsets.only(left: 12),
                margin: const EdgeInsets.only(right: 8),
                height: 78,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Image.asset("lib/assets/icon/gopay.png",
                          width: 57, height: 14),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Rp500.099",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      "Tap for History",
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColors.green,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: const [
                  IconMenu(
                    "Bayar",
                    icon: "lib/assets/icon/pay.png",
                  ),
                  IconMenu(
                    "Isi Saldo",
                    icon: "lib/assets/icon/topup.png",
                  ),
                  IconMenu(
                    "Lainnya",
                    icon: "lib/assets/icon/explore.png",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconMenu extends StatelessWidget {
  const IconMenu(this.text,
      {Key? key, this.icon = "", this.color = Colors.white, this.size = 24})
      : super(key: key);

  final Color color;
  final String icon;
  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0),
          child: Column(
            children: [
              Image.asset(
                icon,
                width: size,
                height: size,
              ),
              const SizedBox(height: 5),
              Text(
                text,
                style: TextStyle(
                    color: color, fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconList extends StatelessWidget {
  const IconList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            IconMenu(
              "GoRide",
              icon: "lib/assets/icon/goride.png",
              color: Colors.black87,
              size: 40,
            ),
            IconMenu(
              "GoCar",
              icon: "lib/assets/icon/gocar.png",
              color: Colors.black87,
              size: 40,
            ),
            IconMenu(
              "GoFood",
              icon: "lib/assets/icon/gofood.png",
              color: Colors.black87,
              size: 40,
            ),
            IconMenu(
              "GoRide",
              icon: "lib/assets/icon/gosend.png",
              color: Colors.black87,
              size: 40,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconMenu(
              "GoMart",
              icon: "lib/assets/icon/gomart.png",
              color: Colors.black87,
              size: 40,
            ),
            IconMenu(
              "GoPulsa",
              icon: "lib/assets/icon/gopulsa.png",
              color: Colors.black87,
              size: 40,
            ),
            IconMenu(
              "GoClub",
              icon: "lib/assets/icon/goclub.png",
              color: Colors.black87,
              size: 40,
            ),
            IconMenu(
              "Lainnya",
              icon: "lib/assets/icon/other.png",
              color: Colors.black87,
              size: 40,
            ),
          ],
        )
      ],
    );
  }
}
