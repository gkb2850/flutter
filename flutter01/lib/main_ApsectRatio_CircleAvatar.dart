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

    List<Widget> _createImagesWidget() {
      var imgsArr = listData.map((value) {
        return Card(
          margin: const EdgeInsets.all(10),
          elevation: 20,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.network(
                      value['src']!,
                      fit: BoxFit.cover,
                    ),
                  )),
              ListTile(
                // leading: ClipOval(
                //   child: Image.network(
                //     value['src']!,
                //     fit: BoxFit.cover,
                //     width: 60,
                //     height: 60,
                //   ),
                // ),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(value['src']!),
                ),
                title: Text(value['title']!),
                subtitle: Text(value['desc']!),
              )
            ],
          ),
        );
      });
      return imgsArr.toList();
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('首页'),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.blue,
          ),
        ),
        body: ListView(
          children: [
            AspectRatio(
              aspectRatio: 2,
              child: Container(
                color: Colors.blue,
                width: size.width,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 10,
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  //card的阴影效果
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.blue,
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      '哒哒',
                      style: TextStyle(fontSize: 28, color: Colors.white),
                    ),
                    subtitle: Text(
                      '高级软件工程师',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      '电话：1380013800',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      '地址：广州天河区',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 10,
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              shadowColor: Colors.blue,
              color: Colors.blue,
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      '咕咕',
                      style: TextStyle(fontSize: 28, color: Colors.white),
                    ),
                    subtitle: Text(
                      '高级软件工程师',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      '电话：1380013800',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      '地址：广州天河区',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 10,
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              shadowColor: Colors.blue,
              color: Colors.blue,
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      '咕咕',
                      style: TextStyle(fontSize: 28, color: Colors.white),
                    ),
                    subtitle: Text(
                      '高级软件工程师',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      '电话：1380013800',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      '地址：广州天河区',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: _createImagesWidget(),
            )
          ],
        ));
  }
}
