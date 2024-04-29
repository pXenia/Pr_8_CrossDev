import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'Card.dart';

class Coffee extends StatefulWidget {
  @override
  _CoffeeState createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {
  List<List<String>> coffee = [
    ["https://news.ralali.com/wp-content/uploads/2021/07/capuccino-scaled.jpg", "капучино"],
    ["https://avatars.dzeninfra.ru/get-zen_doc/271828/pub_65605c87a767964d45b88dde_65605c98368ff544362c2655/scale_1200","американо"],
    ["https://avatars.dzeninfra.ru/get-zen_doc/271828/pub_6518021545c0495f1349c4a4_6518026c69319f27a49cb73b/scale_1200","латте"],
    ["https://static.tildacdn.com/tild3434-6538-4337-b634-386635346362/latte.jpg","раф"],
  ["https://img.razrisyika.ru/kart/83/1200/331605-kakao-6.jpg","какао"]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Кофе')),
      body: Center(
        child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: coffee.length,
                    itemBuilder: (context, index) {
                      return SnackCard(
                          name: coffee[index][1],
                          image: coffee[index][0]);
                    }
                ),
              ),
              ElevatedButton(
                onPressed: () => context.go('/'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown.shade50,
                ),
                child: const Text(
                  "Назад",
                  style: TextStyle(fontSize: 16, color: Colors.brown),
                ),
              ),
            ]
        ),
      ),
    );
  }
}