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
      drawer: Drawer(
        child: Column(
          children: [
            const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: DrawerHeader(
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F9a71899f-9445-4635-b6a9-ecd1bc32cf80%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703478854&t=622fe4983d6617ba6eb336fb7146ab82'),
                              fit: BoxFit.cover)),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F5828f11d-1614-4988-bfcb-5bdd5f8b8f1a%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703478854&t=e6aacc85e2922cadb12f3b1e5d666769')),
                            title: Text(
                              '哒哒',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              '邮箱：2356995865@qq.com',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      )),
                )
              ],
            ),
            ListTile(
              leading: ClipOval(
                child: Container(
                  width: 32,
                  height: 32,
                  color: Colors.blue,
                  child: const Icon(
                    Icons.people,
                    color: Colors.white,
                  ),
                ),
              ),
              title: const Text('个人中心'),
            ),
            const Divider(),
            ListTile(
              leading: ClipOval(
                child: Container(
                  width: 32,
                  height: 32,
                  color: Colors.blue,
                  child: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ),
              title: const Text('设置'),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: UserAccountsDrawerHeader(
                        decoration: const BoxDecoration(
                            color: Colors.yellow,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F9a71899f-9445-4635-b6a9-ecd1bc32cf80%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703478854&t=622fe4983d6617ba6eb336fb7146ab82'),
                                fit: BoxFit.cover)),
                        currentAccountPicture: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F5828f11d-1614-4988-bfcb-5bdd5f8b8f1a%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703478854&t=e6aacc85e2922cadb12f3b1e5d666769'),
                        ),
                        otherAccountsPictures: [
                          Image.network(
                              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F4c87fc9a-f0f0-424c-a524-493c13b53de0%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703478854&t=d64be85456d691aa8b3fef64b73702af'),
                          Image.network(
                              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Ffa12be19-f4e6-4486-b150-11e51946ccb2%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703478854&t=cc83999a68b31d756278360adff109b0'),
                          Image.network(
                              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc6ee0cd8-9bcf-4f53-b71d-245e063b7755%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703478854&t=8736e8d64512b30748cf313df3e0eb37')
                        ],
                        accountName: const Text('哒哒'),
                        accountEmail: const Text('2356995865@qq.com')))
              ],
            )
          ],
        ),
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
