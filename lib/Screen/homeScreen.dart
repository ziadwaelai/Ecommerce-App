import 'package:flutter/material.dart';
import 'package:task1/shered/components.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: buttomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.menu_sharp,
            color: Colors.grey,
            size: 30,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          "EDEKA",
          style: TextStyle(
              color: Colors.blue[600],
              fontSize: 30,
              fontWeight: FontWeight.w900),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
              width: 40,
              child: Icon(
                Icons.undo_rounded,
                color: Colors.blue[600],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
              width: 40,
              child: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 290,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        Text(
                          "  Search Product here",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  width: 50,
                  height: 45,
                  child: const Icon(
                    Icons.filter_list_alt,
                    color: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  bolc("asstes/image/Bakery.png", "Bakery"),
                  bolc("asstes/image/fruit.png", "Fruis", isSelect: true),
                  bolc("asstes/image/veg.png", "Vegetables"),
                  bolc("asstes/image/milk.jpg", "Milk"),
                  bolc("asstes/image/Bakery.png", "Bakery"),
                  bolc("asstes/image/fruit.png", "Fruis"),
                  bolc("asstes/image/veg.png", "Vegetables"),
                  bolc("asstes/image/milk.jpg", "Milk"),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 1,
                    offset: const Offset(0, -0),
                  ),
                ],
              ),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: .775,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                scrollDirection: Axis.vertical,
                controller: ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                children: [
                  item(true, "asstes/image/lemon_PNG25276.png", 1.10, "lemon",
                      "Bergamo italy"),
                  item(false, "asstes/image/banana.png", 2.05, "Banana",
                      "Cattier italiano"),
                  item(false, "asstes/image/grape.png", 3.15, "Grape",
                      "Cattier italiano"),
                  item(false, "asstes/image/orang.png", 100.5, "orange",
                      "Cattier italiano"),
                  item(true, "asstes/image/lemon_PNG25276.png", 1.10, "lemon",
                      "Bergamo italy"),
                  item(false, "asstes/image/banana.png", 2.05, "Banana",
                      "Cattier italiano"),
                  item(false, "asstes/image/grape.png", 3.15, "Grape",
                      "Cattier italiano"),
                  item(true, "asstes/image/orang.png", 100.5, "orange",
                      "Cattier italiano"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget item(bool isOff, String url, double price, String title, String sub) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        width: 150,
        height: 230,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                isOff
                    ? Container(
                        alignment: Alignment.topLeft,
                        width: 70,
                        height: 30,
                        child: const Center(
                            child: Text(
                          "25% off",
                          style: TextStyle(color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.orange[700],
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                      )
                    : const SizedBox(
                        width: 70,
                        height: 30,
                      ),
                const Spacer(),
                Container(
                    alignment: Alignment.topRight,
                    width: 70,
                    height: 30,
                    child: IconButton(
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image(
                        image: AssetImage(url),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    sub,
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("$price€",
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.w500)),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {});
                    totalPrice += price;
                    number += 1;
                  },
                  child: Container(
                    width: 42,
                    height: 49.5,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
