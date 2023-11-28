import 'package:flutter/material.dart';

class CatetoryPage extends StatefulWidget {
  const CatetoryPage({super.key});

  @override
  State<CatetoryPage> createState() => _CatetoryPageState();
}

class _CatetoryPageState extends State<CatetoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text('分类'),
    );
  }
}
