import 'package:flutter/material.dart';

double totalPrice = 0.0;
int number = 0;
List<Widget> items = [];
Widget buttomBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Text(
                  "Total:",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                Text(
                  "${number}x €$totalPrice",
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            width: 90,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Cart",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
