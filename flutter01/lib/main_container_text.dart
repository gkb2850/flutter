import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('首页'),
          ),
          body: const Column(
            children: [MyApp(), MyButton()],
          ))));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      alignment: Alignment.center, //配置容器内元素的方位
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.red, //配置颜色
          border: Border.all(width: 2, color: Colors.blue), //配置边框
          borderRadius: BorderRadius.circular(50), //配置圆角
          boxShadow: const [
            BoxShadow(color: Colors.blue, blurRadius: 10)
          ], //配置阴影
          //LinearGradient线性渐变//RadialGradient径向渐变
          // gradient: const LinearGradient(colors: [Colors.red, Colors.yellow])),
          gradient: const RadialGradient(colors: [Colors.red, Colors.yellow])),
      child: const Text(
        '你好，flutter',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
      ),
    ));
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
