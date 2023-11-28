import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  @override
  Widget build(BuildContext context) {
    //获取设备的宽度和高度
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: const Text('首页'),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.blue,
          ),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('普通按钮')),
                TextButton(onPressed: () {}, child: const Text('文本按钮')),
                OutlinedButton(onPressed: () {}, child: const Text('边框按钮')),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.theater_comedy))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.send),
                    label: const Text('发送')),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.info),
                    label: const Text('消息')),
                OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    label: const Text('增加'))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green), //背景颜色
                        foregroundColor: MaterialStateProperty.all(
                            Colors.greenAccent)), //字体或图标颜色
                    child: const Text('普通按钮'))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 60,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('大按钮'),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 200,
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.home_filled),
                      label: const Text('大按钮')),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 60,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        child: const Text(
                          '登录',
                          style: TextStyle(fontSize: 28, letterSpacing: 10),
                        ),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
                    child: const Text('圆角按钮')),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(const CircleBorder(
                              side: BorderSide(color: Colors.white10)))),
                      child: const Text('圆形按钮')),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            const BorderSide(width: 1, color: Colors.green))),
                    child: const Text('带边框的按钮'))
              ],
            )
          ],
        ));
  }
}
