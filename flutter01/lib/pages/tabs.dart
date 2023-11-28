import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  //生命周期函数：当组件初始化的时候就会触发
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            print('左侧点击了');
          },
        ),
        title: _cuttentIndex == 0
            ? TabBar(
                controller: _tabController,
                dividerColor: Colors.white10,
                tabs: const [
                  Tab(
                    child: Text('热门'),
                  ),
                  Tab(
                    child: Text('关注'),
                  ),
                  Tab(
                    child: Text('发现'),
                  ),
                ],
                onTap: (index) {
                  if (kDebugMode) {
                    print(index);
                  }
                })
            : Text(_titleList[_cuttentIndex]),
        actions: [
          IconButton(
              onPressed: () {
                print('右侧点击了');
              },
              icon: const Icon(Icons.search))
        ],
        // bottom: TabBar(
        //     controller: _tabController,
        //     tabs: const [
        //       Tab(
        //         child: Text('热门'),
        //       ),
        //       Tab(
        //         child: Text('关注'),
        //       ),
        //       Tab(
        //         child: Text('发现'),
        //       ),
        //     ],
        //     onTap: (index) {
        //       if (kDebugMode) {
        //         print(index);
        //       }
        //     }),
      ),
      // body: _pageList[_cuttentIndex],
      body: _cuttentIndex == 0
          ? TabBarView(controller: _tabController, children: [
              ListView(
                children: const [
                  ListTile(
                    title: Text('我是热门列表'),
                  )
                ],
              ),
              ListView(
                children: const [
                  ListTile(
                    title: Text('我是关注列表'),
                  )
                ],
              ),
              ListView(
                children: const [
                  ListTile(
                    title: Text('我是发现列表'),
                  )
                ],
              ),
            ])
          : _pageList[_cuttentIndex],
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
