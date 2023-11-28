import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.fromLTRB(0, 44, 0, 0),
              children: [
                const ListTile(
                  title: Text('我是标题1'),
                ),
                const ListTile(
                  title: Text('我是标题2'),
                ),
                const ListTile(
                  title: Text('我是标题3'),
                ),
                const ListTile(
                  title: Text('我是标题4'),
                ),
                const ListTile(
                  title: Text('我是标题5'),
                ),
                const ListTile(
                  title: Text('我是标题6'),
                ),
                const ListTile(
                  title: Text('我是标题7'),
                ),
                const ListTile(
                  title: Text('我是标题8'),
                ),
                const ListTile(
                  title: Text('我是标题9'),
                ),
                const ListTile(
                  title: Text('我是标题10'),
                ),
                const ListTile(
                  title: Text('我是标题11'),
                ),
                const ListTile(
                  title: Text('我是标题12'),
                ),
                const ListTile(
                  title: Text('我是标题13'),
                ),
                const ListTile(
                  title: Text('我是标题14'),
                ),
                const ListTile(
                  title: Text('我是标题15'),
                ),
                const ListTile(
                  title: Text('我是标题16'),
                ),
                Container(
                  width: 600,
                  height: 600,
                  color: Colors.green,
                  child: Stack(
                    //注意：相对于外部容器进行定位，如果没有外部容器就相对于整个屏幕来定位
                    children: [
                      Positioned(
                          left: 0,
                          bottom: 0,
                          child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 100,
                            color: Colors.yellow,
                            child: const Text('left:0,bottom:0'),
                          )),
                      Positioned(
                          right: 0,
                          top: 200,
                          child: Container(
                            alignment: Alignment.center,
                            width: 180,
                            height: 180,
                            color: Colors.blue,
                            child: const Text('right:0,top:200'),
                          )),
                      const Text('你好，flutter')
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      height: 44,
                      color: Colors.white,
                      child: const Text(
                        '二级导航',
                        style: TextStyle(color: Colors.black),
                      ),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(
                    height: 44,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('左边'),
                    )),
                SizedBox(
                  height: 44,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('右边'),
                  ),
                )
              ],
            ),
            Positioned(
                right: 0,
                top: size.height / 2 - 80,
                child: Container(
                  width: 60,
                  height: 60,
                  color: Colors.blue,
                  child: const Align(
                    alignment: Alignment(0.1,
                        0.1), //了解算法：(Alignment.x*childWidth/2+childWidth/2, Alignment.y*childHeight/2+childHeight/2)
                    child: Text('悬浮按钮'),
                  ),
                ))
          ],
        ));
  }
}

//自定义IconContainer
class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;
  IconContainer(this.icon, {required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Icon(icon, color: Colors.white, size: 28),
    );
  }
}
