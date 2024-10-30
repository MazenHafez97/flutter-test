import 'package:flutter/material.dart';
import 'package:untitled5/detail.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List categories = [
    {"iconname": Icons.laptop, "title": "laptob"},
    {"iconname": Icons.phone_iphone, "title": "Phone"},
    {"iconname": Icons.watch_outlined, "title": "Watch"},
    {"iconname": Icons.headphones_outlined, "title": "Headphone"},
  ];
  List items = [
    {
      "images": "images/air pods.png",
      "title": "Air Pods Pro",
      "subtitile": "wosem Air Pod",
      "price": "500EL"
    },
    {
      "images": "images/head.png",
      "title": "Headphone",
      "subtitile": "Good Headphone",
      "price": "350EL"
    },
    {
      "images": "images/la.png",
      "title": "Laptpob",
      "subtitile": "The Best Laptob",
      "price": "8000EL"
    },
    {
      "images": "images/watch2.png",
      "title": "Appel Watch",
      "subtitile": "smart watch",
      "price": "750EL"
    },
    {
      "images": "images/wctch.png",
      "title": "Appel Watch",
      "subtitile": "smart watch",
      "price": "850EL"
    },
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          selectedItemColor: Colors.orange,
          onTap: (val) {
            setState(() {
              selected = val;
            });
          },
          currentIndex: selected,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "*"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "*"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "*"),
          ]),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor: Colors.black,
                      hintText: "search",
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true),
                )),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.menu,
                    size: 40,
                  ),
                )
              ],
            ),
            Container(
              height: 30,
            ),
            const Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.only(right: 22),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(categories[i]["iconname"], size: 40),
                          padding: EdgeInsets.all(15),
                        ),
                        Container(
                            child: Text(
                          categories[i]["title"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey[800]),
                        )),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                "Best Selling",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            GridView.builder(
                itemCount: items.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 205),
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => itemsdateils(
                                data: items[i],
                              )));
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 200,
                            color: Colors.grey[400],
                            child: Image.asset(
                              items[i]["images"],
                              fit: BoxFit.fill,
                              height: 111,
                            ),
                          ),
                          Text(
                            items[i]["title"],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(items[i]["subtitile"]),
                          Text(
                            items[i]["price"],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
