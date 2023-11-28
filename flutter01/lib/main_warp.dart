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
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Wrap(
                spacing: 10, //x轴的间距
                runSpacing: 10, //y轴的间距
                // direction: Axis.vertical,
                alignment: WrapAlignment.spaceBetween,
                children: [
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                  Button('第一季', onPressed: () {}),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '热搜',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const Divider(),
            Padding(
              padding: EdgeInsets.all(10),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  Button('女装', onPressed: () {}),
                  Button('笔记本', onPressed: () {}),
                  Button('玩具', onPressed: () {}),
                  Button('文学', onPressed: () {}),
                  Button('女装', onPressed: () {}),
                  Button('市场', onPressed: () {}),
                  Button('西装', onPressed: () {}),
                  Button('以纯', onPressed: () {}),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    '历史记录',
                    style: Theme.of(context).textTheme.titleLarge,
                  )
                ],
              ),
            ),
            const Divider(),
            Column(
              children: const [
                ListTile(
                  title: Text('女装'),
                ),
                Divider(),
                ListTile(
                  title: Text('笔记本'),
                ),
                Divider(),
                ListTile(
                  title: Text('文学'),
                ),
                Divider(),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black45)),
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                    label: const Text('清空历史'))
              ],
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ));
  }
}

//自定义按钮组件
class Button extends StatelessWidget {
  String text;
  void Function()? onPressed;
  Button(this.text, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(242, 255, 244, 244)),
          foregroundColor: MaterialStateProperty.all(Colors.black45)),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
