import 'package:flutter/material.dart';
import './coustomIcon.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.amber.shade600),
    home: Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
      ),
      body: const HomePage(),
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _numCount = 0;
  final List<String> _list = [];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                '$_numCount',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _numCount++;
                    });
                  },
                  child: const Text('增加'))
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _list.add('我是新增的列表${_list.length + 1}');
                  });
                },
                child: const Text('增加')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _list.removeLast();
                  });
                },
                child: const Text('减少')),
          ],
        ),
        Column(
          children: _list.map((v) {
            return ListTile(
              title: Text(v),
            );
          }).toList(),
        )
      ],
    );
  }
}
