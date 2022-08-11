import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: demo(),
  ));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {

  List<Widget> l=[first(),second(),third()];
  int cnt=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://exploringbits.com/wp-content/uploads/2022/01/cool-pfp-6.jpg?ezimgfmt=rs:352x359/rscb3/ng:webp/ngcb3"),
                ),
                accountName: Text("abc"),
                accountEmail: Text("abc@gmail.com")),
            ListTile(title: Text("First"),onTap: () {
              Navigator.pop(context);
              cnt = 0;
              setState(() {

              });
            },),
            ListTile(title: Text("Second"),
            onTap: () {
              Navigator.pop(context);
              cnt = 1;
              setState(() {

              });
            },),
            ListTile(title: Text("Third"),onTap: () {
              Navigator.pop(context);
              cnt = 2;
              setState(() {

              });
            },)
          ],
        ),
      ),
      body: l[cnt],
    );
  }
}

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.brown,);
  }
}

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.cyan,);
  }
}

class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.green,);
  }
}
