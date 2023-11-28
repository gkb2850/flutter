import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter01/pages/tabs/category.dart';
import 'package:flutter01/pages/tabs/home.dart';
import 'package:flutter01/pages/tabs/message.dart';
import 'package:flutter01/pages/tabs/setting.dart';
import 'package:flutter01/pages/tabs/user.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _cuttentIndex = 0;

  final List<Widget> _pageList = const [
    HomePage(),
    CatetoryPage(),
    MessagePage(),
    SettingPage(),
    UserPage()
  ];

  final List<String> _titleList = [
    '首页',
    '分类',
    '信息',
    '设置',
    '我的',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleList[_cuttentIndex]),
      ),
      body: _pageList[_cuttentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _cuttentIndex,
        onTap: (index) {
          setState(() {
            _cuttentIndex = index;
          });
        },
        fixedColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(
              icon: Icon(Icons.class_outlined), label: '分类'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: '消息'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: '我的')
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 4),
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: FloatingActionButton(
          backgroundColor: _cuttentIndex == 2 ? Colors.blue : Colors.grey,
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _cuttentIndex = 2;
            });
          },
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
