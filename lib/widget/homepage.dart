import 'package:flutter/material.dart';

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
