import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_app/model/food_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String counter = "";
  String image =
      'https://www.vmcdn.ca/f/files/via/rss/glacier/2020/06/food.jpg;w=960';

  int list = 0;
  // List<String> foods = [
  //   '김치찌게',
  //   '라면',
  //   '햄버거',
  //   '초밥',
  //   '알리오올리오',
  //   '까르보나라',
  //   '마라탕',
  //   '자장면',
  //   '짬뽕',
  //   '스테이크',
  //   '불고기',
  //   '간장게장',
  //   '피자',
  //   '오므라이스',
  //   '비빔밥',
  //   '콩나물국',
  //   '카레',
  //   '스프',
  //   '치킨',
  //   '국밥',
  //   '된장찌개',
  //   '생선까스',
  //   '돈까스',
  //   '고기',
  //   '보쌈',
  //   '우동',
  // ];
  List<Food_model> food = [
    Food_model(
      name: '김치찌게',
      img:
          'http://www.chungjungone.com/upload/knowhow/table/20200314_171845318_69942.jpg',
    ),
    Food_model(
      name: '라면',
      img:
          'https://src.hidoc.co.kr/image/lib/2019/3/26/20190326140110420_0.jpg',
    ),
    Food_model(
      name: '햄버거',
      img:
          'https://nimage.g-enews.com/phpwas/restmb_allidxmake.php?idx=5&simg=2017070609524404287a8b5e7c93c12114162187.jpg',
    ),
    Food_model(
      name: '초밥',
      img:
          'http://th1.tmon.kr/thumbs/image/a3c/e19/bc5/a48971364_700x700_95_FIT.jpg',
    ),
    Food_model(
      name: '짬뽕',
      img: 'http://www.safetimes.co.kr/news/photo/201810/70533_43046_1449.jpg',
    ),
    Food_model(
      name: '알리오올리오',
      img: 'https://t1.daumcdn.net/cfile/tistory/213A6F4358B383C306',
    ),
    Food_model(
      name: '까르보나라',
      img:
          'http://img.danawa.com/prod_img/500000/653/027/img/8027653_1.jpg?shrink=330:330&_v=20201124091723',
    ),
    Food_model(
      name: '마라탕',
      img:
          'https://recipe1.ezmember.co.kr/cache/recipe/2015/09/29/41cab0d7e7262c3847750c7c01815480.jpg',
    ),
    Food_model(
      name: '자장면',
      img:
          'https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202105/22/SNUH/20210522134912296rafn.jpg',
    ),
    Food_model(
      name: '스테이크',
      img:
          'https://ww.namu.la/s/06d2465ed7475af8f96709a6d31fd6c2a76b9f0ff886197bdaa5b61d6481bfc92aed65f38d9bad9240f4b2d7686cc315e0981a7e9e3adb1815bbfdf82780cc6fcd4c227ed8d7d0680a598467e556ec72edbb844d667dddfa928de9e3ab2f80e0c9ba4d57e05703c1581f7c5993135ce2',
    ),
    Food_model(
      name: '불고기',
      img:
          'https://recipe1.ezmember.co.kr/cache/recipe/2019/03/03/11baafbe81803965b17c3ab42a5992cb1.jpg',
    ),
    Food_model(
      name: '간장게장',
      img:
          'https://tumblbug-pci.imgix.net/dfd6741e6221c177ba50d064c6f64cbc6f8edc53/105fca2e8947c9a81d11148f9cc79414c9311f11/9071e1f19a6cf4c0b54c8f56077be19dcf045f53/dc761dcc-c745-41da-8a49-ca4a87ea8119.jpg?ixlib=rb-1.1.0&w=1240&h=930&auto=format%2Ccompress&lossless=true&fit=crop&s=c7e539bff229bb19c75528b23f7bba14',
    ),
    Food_model(
      name: '피자',
      img: 'https://cdn.dominos.co.kr/admin/upload/goods/20200311_x8StB1t3.jpg',
    ),
    Food_model(
      name: '오므라이스',
      img: 'https://t1.daumcdn.net/cfile/tistory/991D95335B1BA93712',
    ),
    Food_model(
      name: '비빔밥',
      img:
          'https://namu.wiki/jump/ChlF%2BAOSMhmuB0SlWoGcd2%2BHFtqxo9q%2Brs1AAgpmwXMrFK5h1703QGfid5HgR%2Fxc',
    ),
    Food_model(
      name: '콩나물국',
      img:
          'https://namu.wiki/jump/DsWNPilMiKIY3Je84dV4yh23u3yg3zibuQz6xt1HRozdeiconSRJ9QO1vFLg%2BYCc',
    ),
    Food_model(
      name: '카레',
      img:
          'https://namu.wiki/jump/OHB%2FKoKqMrG6PWkpF%2B2S7TYHXbt2W3KSAFzf90HET0CBXEDQgfJ94sEB6p%2FNPH03 ',
    ),
    Food_model(
      name: '스프',
      img:
          'https://namu.wiki/jump/HIjLn9fgtolgQOMkQMVNQ%2Fi9HS0MEh8rTfJixc4tXggfsvE7Y%2FUYRzTv3mE4wQ71PDyGR6cRJmNpf9CNChxDMsBbYEwhqtZ%2BLx0StDVf8yrtjAZez7CaHIWHUkB%2FUC08 ',
    ),
    Food_model(
      name: '치킨',
      img:
          'https://namu.wiki/jump/AJzLSBkPMsaGabHFfhewBnciiEJMuIurnalNLLYg%2FPSJnLvORev1qK7aIhIJJipf ',
    ),
    Food_model(
      name: '국밥',
      img:
          'https://namu.wiki/jump/NvsxDRJqZthRU%2F5mHgyCEdU%2F6l1EIh2UUDtU7hpNyqwzSONFZRjFRxnszUTTv6Ic',
    ),
    Food_model(
      name: '된장찌개',
      img: 'http://www.kbsm.net/data/newsThumb/1568688763ADD_thumb580.jpg',
    ),
    Food_model(
      name: '생선까스',
      img:
          'https://homecuisine.co.kr/files/attach/images/140/096/073/acedb048b71e1218d3b652af33e639af.JPG',
    ),
    Food_model(
      name: '돈까스',
      img: 'https://www.ypsori.com/news/photo/201811/14515_14466_1033.jpg',
    ),
    Food_model(
      name: '고기',
      img:
          'https://recipe1.ezmember.co.kr/cache/recipe/2017/07/09/6741acc7f6bf0f7d04245851fb365c311.jpg',
    ),
    Food_model(
      name: '보쌈',
      img:
          'https://i.pinimg.com/564x/64/b1/cc/64b1cc4579111b824180113238b757b7.jpg',
    ),
    Food_model(
      name: '우동',
      img:
          'https://udon0410.com/wp-content/themes/udon0410/assets/images/main_section02_01.png',
    ),
  ];
  // List<String> food_image = [
  //   'http://www.chungjungone.com/upload/knowhow/table/20200314_171845318_69942.jpg',
  //   'https://src.hidoc.co.kr/image/lib/2019/3/26/20190326140110420_0.jpg',
  //   'https://nimage.g-enews.com/phpwas/restmb_allidxmake.php?idx=5&simg=2017070609524404287a8b5e7c93c12114162187.jpg',
  //   'http://th1.tmon.kr/thumbs/image/a3c/e19/bc5/a48971364_700x700_95_FIT.jpg',
  //   'http://www.safetimes.co.kr/news/photo/201810/70533_43046_1449.jpg',
  //   'https://t1.daumcdn.net/cfile/tistory/213A6F4358B383C306',
  //   'http://img.danawa.com/prod_img/500000/653/027/img/8027653_1.jpg?shrink=330:330&_v=20201124091723',
  //   'https://recipe1.ezmember.co.kr/cache/recipe/2015/09/29/41cab0d7e7262c3847750c7c01815480.jpg',
  //   'https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202105/22/SNUH/20210522134912296rafn.jpg',
  //   'https://ww.namu.la/s/06d2465ed7475af8f96709a6d31fd6c2a76b9f0ff886197bdaa5b61d6481bfc92aed65f38d9bad9240f4b2d7686cc315e0981a7e9e3adb1815bbfdf82780cc6fcd4c227ed8d7d0680a598467e556ec72edbb844d667dddfa928de9e3ab2f80e0c9ba4d57e05703c1581f7c5993135ce2',
  //   'https://recipe1.ezmember.co.kr/cache/recipe/2019/03/03/11baafbe81803965b17c3ab42a5992cb1.jpg',
  //   'https://tumblbug-pci.imgix.net/dfd6741e6221c177ba50d064c6f64cbc6f8edc53/105fca2e8947c9a81d11148f9cc79414c9311f11/9071e1f19a6cf4c0b54c8f56077be19dcf045f53/dc761dcc-c745-41da-8a49-ca4a87ea8119.jpg?ixlib=rb-1.1.0&w=1240&h=930&auto=format%2Ccompress&lossless=true&fit=crop&s=c7e539bff229bb19c75528b23f7bba14',
  //   'https://cdn.dominos.co.kr/admin/upload/goods/20200311_x8StB1t3.jpg',
  //   'https://t1.daumcdn.net/cfile/tistory/991D95335B1BA93712',
  //   'https://namu.wiki/jump/ChlF%2BAOSMhmuB0SlWoGcd2%2BHFtqxo9q%2Brs1AAgpmwXMrFK5h1703QGfid5HgR%2Fxc ',
  //   'https://namu.wiki/jump/DsWNPilMiKIY3Je84dV4yh23u3yg3zibuQz6xt1HRozdeiconSRJ9QO1vFLg%2BYCc',
  //   'https://namu.wiki/jump/OHB%2FKoKqMrG6PWkpF%2B2S7TYHXbt2W3KSAFzf90HET0CBXEDQgfJ94sEB6p%2FNPH03 ',
  //   'https://namu.wiki/jump/HIjLn9fgtolgQOMkQMVNQ%2Fi9HS0MEh8rTfJixc4tXggfsvE7Y%2FUYRzTv3mE4wQ71PDyGR6cRJmNpf9CNChxDMsBbYEwhqtZ%2BLx0StDVf8yrtjAZez7CaHIWHUkB%2FUC08 ',
  //   'https://namu.wiki/jump/AJzLSBkPMsaGabHFfhewBnciiEJMuIurnalNLLYg%2FPSJnLvORev1qK7aIhIJJipf ',
  //   'https://namu.wiki/jump/NvsxDRJqZthRU%2F5mHgyCEdU%2F6l1EIh2UUDtU7hpNyqwzSONFZRjFRxnszUTTv6Ic',
  //   'http://www.kbsm.net/data/newsThumb/1568688763ADD_thumb580.jpg',
  //   'https://homecuisine.co.kr/files/attach/images/140/096/073/acedb048b71e1218d3b652af33e639af.JPG',
  //   'https://www.ypsori.com/news/photo/201811/14515_14466_1033.jpg',
  //   'https://recipe1.ezmember.co.kr/cache/recipe/2017/07/09/6741acc7f6bf0f7d04245851fb365c311.jpg',
  //   'https://i.pinimg.com/564x/64/b1/cc/64b1cc4579111b824180113238b757b7.jpg',
  //   'https://udon0410.com/wp-content/themes/udon0410/assets/images/main_section02_01.png',
  // ];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

      list = Random().nextInt(food.length) + 1;
      counter = food[list].name;
      image = food[list].img;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Click for random food"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),

                // Image.network(
                //   image,
                //
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '$counter',
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                _incrementCounter();
                print("clicked");
              },
              child: Text(
                "Random Food",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.black87,
              ),
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
