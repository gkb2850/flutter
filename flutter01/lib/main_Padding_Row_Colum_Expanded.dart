import 'package:flutter/material.dart';

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
    return Scaffold(
        appBar: AppBar(
          title: const Text('首页'),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                const Padding(
                    padding: EdgeInsets.all(20), child: Text('你好fultter')),
                Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.black12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 1,
                            child: IconContainer(
                              Icons.home,
                              color: Colors.blue,
                            )),
                        Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.green,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconContainer(
                                    Icons.settings,
                                    color: Colors.yellow,
                                  ),
                                  IconContainer(
                                    Icons.work,
                                    color: Colors.pink,
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.black26,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconContainer(
                        Icons.subject,
                        color: Colors.red,
                      ),
                      IconContainer(
                        Icons.opacity,
                        color: Colors.green,
                      ),
                      IconContainer(
                        Icons.wallet,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: 200,
              margin: const EdgeInsets.all(5),
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                        height: 180,
                        child: Image.network(
                          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fddb1365a-7400-46e4-a391-bfc41375ac23%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703478945&t=685121e6d0d12554d44736645a9d2025',
                          fit: BoxFit.cover,
                        )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                        height: 180,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 1,
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Image.network(
                                    'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fe25c66c9-49c8-4899-80c5-bea8138fbfb0%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703478945&t=63039a21be34a3eee538fd0df089ce99',
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            const SizedBox(
                              height: 5,
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                  width: double.infinity,
                                  child: Image.network(
                                    'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F9a71899f-9445-4635-b6a9-ecd1bc32cf80%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703478854&t=622fe4983d6617ba6eb336fb7146ab82',
                                    fit: BoxFit.cover,
                                  )),
                            )
                          ],
                        )),
                  )
                ],
              ),
            )
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
