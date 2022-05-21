// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

/**
 * 文本测试函数
 */
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//       width: 300,
//       height: 300,
//       child: Text(
//         '文本测试' * 10,
//         overflow: TextOverflow.ellipsis,
//         maxLines: 1,
//         textDirection: TextDirection.ltr,
//         style: TextStyle(
//           fontSize: 15.0,
//           color: Colors.red,
//           fontWeight: FontWeight.bold,
//           decoration: TextDecoration.underline,
//           decorationStyle: TextDecorationStyle.dashed,
//         ),
//       ),
//       padding: EdgeInsets.all(10),
//       margin: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         border: Border.all(
//           color: Colors.yellow,
//           width: 2,
//           style: BorderStyle.solid,
//         ),
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//       ),
//     ));
//   }
// }
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
            width: 300,
            height: 300,
            color: Color.fromARGB(255, 180, 243, 33),
            child: Column(children: <Widget>[
              Text('Flutter图片演示'),
              Text('本地图片'),
              Image.asset('images/2.0x/test.jpg'),
              Text('网址图片'),
              Image.network(
                'data:image/jpeg;base64,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',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                repeat: ImageRepeat.noRepeat,
                alignment: Alignment.center,
              ),
            ])));
  }
}
