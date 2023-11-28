import 'package:flutter/material.dart';
import 'package:flutter01/res/listData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  List<Widget> _initGridViewData() {
    var tempList = listData.map((value) {
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
        child: Column(
          children: [
            SizedBox(
                height: 160,
                child: Image.network(
                  '${value['src']}',
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${value['title']}',
              style: const TextStyle(fontSize: 18),
            )
          ],
        ),
      );
    });

    return tempList.toList();
  }

  Widget _initGridView(context, index) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
      child: Column(
        children: [
          SizedBox(
              height: 160,
              child: Image.network(
                '${listData[index]['src']}',
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 10,
          ),
          Text(
            '${listData[index]['title']}',
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('首页'),
        ),
        body: GridView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: listData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //一行显示的数量
              crossAxisSpacing: 10, //水平子widget之间间距
              mainAxisSpacing: 10, //垂直子widget之间间距
              childAspectRatio: 1,
            ),
            itemBuilder: _initGridView)

        // GridView.count(
        //   crossAxisCount: 2, //一行显示的数量
        //   crossAxisSpacing: 10, //水平子widget之间间距
        //   mainAxisSpacing: 10, //垂直子widget之间间距
        //   padding: const EdgeInsets.all(10),
        //   childAspectRatio: 1, //宽高比
        //   children: _initGridViewData(),
        // ),
        //     GridView.extent(
        //   maxCrossAxisExtent: 100, //横轴子元素的最大宽度
        //   children: const [
        //     Icon(Icons.home),
        //     Icon(Icons.panorama_sharp),
        //     Icon(Icons.safety_check),
        //     Icon(Icons.h_mobiledata),
        //     Icon(Icons.ice_skating_outlined),
        //     Icon(Icons.hide_image),
        //     Icon(Icons.verified_outlined),
        //     Icon(Icons.hide_image_outlined),
        //     Icon(Icons.gps_not_fixed),
        //     Icon(Icons.type_specimen),
        //     Icon(Icons.offline_bolt),
        //   ],
        // )
        );
  }
}
