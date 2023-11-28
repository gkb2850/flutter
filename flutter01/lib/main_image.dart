import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('首页'),
          ),
          body: const Column(
            children: [
              MyApp(),
              MyButton(),
              Circular(),
              CliImage(),
              LocalImagee()
            ],
          ))));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Image.network(
              'https://img1.baidu.com/it/u=1546227440,2897989905&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500',
              repeat: ImageRepeat.repeatY,
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Image.network(
                'https://img1.baidu.com/it/u=1546227440,2897989905&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500',
                fit: BoxFit.fill),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Image.network(
                'https://img1.baidu.com/it/u=1546227440,2897989905&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500',
                fit: BoxFit.cover),
          )
        ],
      ),
    );
  }
}

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      child: const Text(
        '按钮',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}

//实现一个圆形图片
class Circular extends StatefulWidget {
  const Circular({super.key});

  @override
  State<Circular> createState() => _CircularState();
}

class _CircularState extends State<Circular> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(50),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://img1.baidu.com/it/u=1546227440,2897989905&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500'),
              fit: BoxFit.cover)),
    );
  }
}

//实现一个圆形图片
class CliImage extends StatefulWidget {
  const CliImage({super.key});

  @override
  State<CliImage> createState() => _CliImageState();
}

class _CliImageState extends State<CliImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: ClipOval(
          child: Image.network(
            'https://img1.baidu.com/it/u=1546227440,2897989905&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500',
            fit: BoxFit.cover,
            width: 100,
            height: 100,
          ),
        ));
  }
}

class LocalImagee extends StatefulWidget {
  const LocalImagee({super.key});

  @override
  State<LocalImagee> createState() => _LocalImageeState();
}

class _LocalImageeState extends State<LocalImagee> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Image.asset(
        'images/img1.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
