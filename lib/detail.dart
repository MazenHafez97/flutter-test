import 'package:flutter/material.dart';
import 'package:untitled5/homepage.dart';

class itemsdateils extends StatefulWidget {
  final data;
  const itemsdateils({super.key, this.data});

  @override
  State<itemsdateils> createState() => _itemsdateilsState();
}

class _itemsdateilsState extends State<itemsdateils> {
  int selected = 1;

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
      endDrawer: Drawer(
        backgroundColor: Colors.black,
        child: Container(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child:
                          Image.asset("images/mazen2.jpg", fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                      child: ListTile(
                    title: Text(
                      "Mazen Hafez",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "mazen.hafez18@gmail.com",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 13),
                    ),
                  )),
                ],
              ),
              ListTile(
                title: const Text(
                  "home",
                  style: TextStyle(color: Colors.white),
                ),
                leading: const Icon(Icons.home),
                iconColor: Colors.white,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Homepage()));
                },
              ),
              ListTile(
                title: const Text("Account"),
                textColor: Colors.white,
                leading: const Icon(Icons.account_balance_rounded),
                iconColor: Colors.white,
                onTap: () {},
              ),
              ListTile(
                title: const Text("order"),
                textColor: Colors.white,
                leading: const Icon(Icons.check_box),
                iconColor: Colors.white,
                onTap: () {},
              ),
              ListTile(
                title: const Text("about Us"),
                textColor: Colors.white,
                leading: const Icon(Icons.help),
                iconColor: Colors.white,
                onTap: () {},
              ),
              ListTile(
                title: const Text("contact"),
                textColor: Colors.white,
                leading: const Icon(Icons.phone),
                iconColor: Colors.white,
                onTap: () {},
              ),
              ListTile(
                title: const Text("setting"),
                textColor: Colors.white,
                leading: const Icon(Icons.settings),
                iconColor: Colors.white,
                onTap: () {},
              ),
              ListTile(
                title: const Text("Sign Out"),
                textColor: Colors.white,
                leading: const Icon(Icons.exit_to_app),
                iconColor: Colors.white,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.store_mall_directory_outlined,
              color: Colors.black,
            ),
            Text(
              " Mazen ",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Story",
              style: TextStyle(color: Colors.orange),
            )
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      body: ListView(
        children: [
          Image.asset(widget.data["images"]),
          Text(
            widget.data["title"],
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              widget.data["subtitile"],
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 25),
            child: Text(
              widget.data["price"],
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.orange, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Color : ", style: TextStyle(color: Colors.grey)),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.orange)),
              ),
              const Text("  Gray  "),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black,
                ),
              ),
              const Text("  Black  ")
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              "Size :  39  40  41  42  43",
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 110, vertical: 20),
            child: MaterialButton(
              padding: const EdgeInsets.symmetric(vertical: 15),
              color: Colors.black,
              onPressed: () {},
              child: const Text(
                "+Add To Cart",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
