import 'package:flutter/material.dart';
import './coustomIcon.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber.shade600),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('首页'),
        ),
        body: const MyIcon(),
      )));
}

//自带的图标
class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Icon(
          Icons.home,
          size: 30,
          color: Colors.blue.shade400,
        ),
        const SizedBox(
          height: 30,
        ),
        Icon(
          Icons.settings,
          size: 30,
          color: Colors.blue.shade400,
        ),
        const SizedBox(
          height: 30,
        ),
        Icon(
          Icons.search,
          size: 30,
          color: Colors.blue.shade400,
        ),
        const SizedBox(
          height: 30,
        ),
        Icon(
          Icons.person_sharp,
          size: 30,
          color: Colors.blue.shade400,
        ),
        const MyCoustomIcon()
      ],
    );
  }
}

//自定义图标
class MyCoustomIcon extends StatelessWidget {
  const MyCoustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('-----------------------------------'),
        Text('自定义图标'),
        SizedBox(
          height: 20,
        ),
        Icon(CoustomIcon.book, size: 30, color: Colors.pink),
        SizedBox(
          height: 20,
        ),
        Icon(CoustomIcon.book1, size: 30, color: Colors.green),
        SizedBox(
          height: 20,
        ),
        Icon(CoustomIcon.cart, size: 30, color: Colors.amber),
        SizedBox(
          height: 20,
        ),
        Icon(
          CoustomIcon.weatch,
          size: 30,
          color: Colors.green,
        )
      ],
    );
  }
}
