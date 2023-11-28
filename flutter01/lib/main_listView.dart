import 'package:flutter/material.dart';
import './coustomIcon.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber.shade600),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('首页'),
        ),
        body: const MyIcon(),
      )));
}

//自带的图标
class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('首页'),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
        const Divider(),
        const ListTile(
          leading: Icon(Icons.payment),
          title: Text('代付款'),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
        const Divider(),
        const ListTile(
          leading: Icon(Icons.add_location_alt),
          title: Text('地址'),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
        const Divider(),
        const ListTile(
          leading: Icon(Icons.local_activity_outlined),
          title: Text('收藏'),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
        const Divider(),
        const ListTile(
          leading: Icon(Icons.person),
          title: Text('我的'),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
        const Divider(),
        ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://img1.baidu.com/it/u=1127823088,1886049180&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
                    fit: BoxFit.cover)),
          ),
          title: const Text('自描可爱闺蜜头像自描可爱闺蜜头像自描可爱闺蜜头像'),
        ),
        const Divider(),
        ListTile(
          leading: ClipOval(
            child: Image.network(
              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw%2Fc145308e-a727-43fe-a2f0-eb084af7d4d3%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703322386&t=3dcc09206d62c87003009d97906ee226',
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
          ),
          title: const Text('头像女动漫可爱头像女动漫可爱头像女动漫可爱头像女动漫可爱头像女动漫可爱'),
        ),
        const Divider(),
        ListTile(
          leading: ClipOval(
            child: Image.network(
              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202004%2F09%2F20200409213740_klydu.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703322386&t=823aabbb995a2d823c0d63af9bd59f38',
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
          ),
          title: const Text(
              '可爱小猫咪 萌宠头像猫猫头像可爱小猫咪 萌宠头像猫猫头像可爱小猫咪 萌宠头像猫猫头像可爱小猫咪 萌宠头像猫猫头像'),
        ),
        const Divider(),
        ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202005%2F16%2F20200516213113_umuaf.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703322386&t=2f72dc284deff35ae55b75e13a84125b'),
                    fit: BoxFit.cover)),
          ),
          title: const Text(
              '自描可爱女生头像 - 堆糖自描可爱女生头像 - 堆糖自描可爱女生头像 - 堆糖自描可爱女生头像 - 堆糖'),
        ),
        const Divider(),
        ListTile(
          leading: ClipOval(
            child: Image.network(
              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202008%2F27%2F20200827121027_lioxg.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703322386&t=237912f3079991bd7c5ef0d199832f84',
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
          ),
          title: const Text(
            '动漫情侣可爱头像动漫情侣可爱头像动漫情侣可爱头像动漫情侣可爱头像动漫情侣可爱头像动漫情侣可爱头像',
          ),
        ),
        const Divider(),
        Image.network(
          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202008%2F31%2F20200831080725_a9833.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703322386&t=2ef70a236d8ee1fcaced7311389528fd',
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ),
        Image.network(
          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202006%2F19%2F20200619164254_JYWn3.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703322386&t=4cf06d7904dafe86727f5da0eeab3b83',
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ),
        Image.network(
          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202005%2F26%2F20200526220546_kyqtd.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703322386&t=1d03e4018b7eaae31faa3d2637390bd8',
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ),
        Image.network(
          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202004%2F09%2F20200409115745_fucZc.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703322386&t=11e29638a727b56c2970fbe8f06c97c3',
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ),
        Image.network(
          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202002%2F25%2F20200225132551_cyywy.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703322386&t=ba82295f3700155ed8a34dc12c759de5',
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ),
        Image.network(
          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202005%2F07%2F20200507090211_wivrx.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703325935&t=336273bf8483491f02c0a6597334d88a',
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ),
        const AvatarXBox()
      ],
    );
  }
}

class AvatarXBox extends StatelessWidget {
  const AvatarXBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ClipOval(
            child: Image.network(
              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202002%2F10%2F20200210164402_usltu.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703325935&t=53132d5c4bf770ed5eacbf3fb2b307fc',
              fit: BoxFit.cover,
              width: 130,
              height: 130,
            ),
          ),
          ClipOval(
            child: Image.network(
              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202003%2F06%2F20200306210821_exbip.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703325935&t=d4796bac62ef78834fa2e3b3f0ac777d',
              fit: BoxFit.cover,
              width: 130,
              height: 130,
            ),
          ),
          ClipOval(
            child: Image.network(
              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202001%2F21%2F20200121030236_x38ZK.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703326785&t=c57d907deaa8006bb95e8c7f70283f1a',
              fit: BoxFit.cover,
              width: 130,
              height: 130,
            ),
          ),
          ClipOval(
            child: Image.network(
              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201908%2F25%2F20190825223014_PWriz.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703325935&t=2bccd4a8853c37bb2d56e26c7efad813',
              fit: BoxFit.cover,
              width: 130,
              height: 130,
            ),
          ),
          ClipOval(
            child: Image.network(
              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202010%2F10%2F20201010150949_85b4b.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703325935&t=03bc3bbdcee180f3e4e6cb413e32149a',
              fit: BoxFit.cover,
              width: 130,
              height: 130,
            ),
          ),
          ClipOval(
            child: Image.network(
              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202001%2F21%2F20200121030236_x38ZK.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703325935&t=ad099c4ffcc5fc1557626c9666b0543d',
              fit: BoxFit.cover,
              width: 130,
              height: 130,
            ),
          ),
          ClipOval(
            child: Image.network(
              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202005%2F16%2F20200516213113_umuaf.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703325935&t=992e56b40b3b9e3424472d3747234864',
              fit: BoxFit.cover,
              width: 130,
              height: 130,
            ),
          ),
          ClipOval(
            child: Image.network(
              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202004%2F13%2F20200413073408_eoshn.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703326785&t=b109e1db522cc414896f17e8cdcfd667',
              fit: BoxFit.cover,
              width: 130,
              height: 130,
            ),
          ),
          ClipOval(
            child: Image.network(
              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202004%2F09%2F20200409105920_pbrmr.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703326785&t=dfd8646e87e30226cf6e6a81bc654908',
              fit: BoxFit.cover,
              width: 130,
              height: 130,
            ),
          ),
          ClipOval(
            child: Image.network(
              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202012%2F16%2F20201216140822_41db4.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1703326785&t=9c1ea166af24e195653ff46f3b57b9c4',
              fit: BoxFit.cover,
              width: 130,
              height: 130,
            ),
          ),
        ],
      ),
    );
  }
}
