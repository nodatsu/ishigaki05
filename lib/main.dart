import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'カレンダー',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  late int ID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('スケジュール共有'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: TextField(decoration: InputDecoration(
              hintText: 'カレンダーID',
            ),
              onChanged: (text) {
                ID = int.parse(text);
                print("########## onChanged ID: " + ID.toString());
              },
            ),
          ),
          Container(
            child: TextButton(
              child: Text("カレンダーへ"),
              onPressed: () async{
                print("########## onPressed ID: " + ID.toString());
                await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage(value: ID)));
              },
            ),
          ),
          Container(

          ),
          Container(
            child: TextButton(
              child: Text("新規作成"),
              onPressed: () async{

                print('##########');
              },
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MyHomePage extends StatefulWidget {
  final int value;

  const MyHomePage({Key? key, required this.value}) : super(key: key);

  @override
  //createState()でState（Stateを継承したクラス）を返す
  _MyHomePageState createState() {
    print("########## MyHomePage value: " + value.toString());

    return _MyHomePageState();
  }
}

//Stateをextendsしたクラスを作る
class _MyHomePageState extends State<MyHomePage> {
  late int state = widget.value;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("########## MyHomePageState state: " + state.toString());
    return Scaffold(
        appBar: AppBar(title: Text('スケジュール共有( '/*+ ID +*/')')), body: buildBody(context));
  }

  Widget buildBody(BuildContext context) {
    return Text("ここ");
   }

}
