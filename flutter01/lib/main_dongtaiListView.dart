import 'package:flutter/material.dart';
import './coustomIcon.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber.shade600),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('首页'),
        ),
        body: const OnLineListView(),
      )));
}

//动态ListView
class OnLineListView extends StatelessWidget {
  const OnLineListView({super.key});

  List<Widget> _initData() {
    List<Widget> list = [];
    for (var i = 0; i < 30; i++) {
      list.add(ListTile(
        title: Text('我是一个标题${i + 1}'),
      ));
    }
    return list;
  }

  List<Widget> _initData2() {
    List<int> list = [];
    for (var i = 31; i < 60; i++) {
      list.add(i);
    }
    var tempList = list.map((e) {
      return ListTile(
        title: Text('我是一个标题$e'),
      );
    });

    return tempList.toList();
  }

  List<Widget> _init() {
    List<Widget> list = [];
    list.addAll(_initData());
    list.addAll(_initData2());
    list.add(const SizedBox(
      height: 30,
      child: Text('---------------------------'),
    ));
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 300,
          child: ListView(
            children: _init(),
          ),
        ),
        SizedBox(
          height: 300,
          child: OnLineListViews(),
        )
      ],
    );
  }
}

class OnLineListViews extends StatelessWidget {
  List list = [];
  OnLineListViews({super.key}) {
    for (var i = 0; i < 30; i++) {
      list.add('我是builder数据$i');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(list[index]));
        });
  }
}
