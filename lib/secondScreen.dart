import "package:flutter/material.dart";
void main() {
  runApp(SecondScreen());
}


class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ImageVievApp"),
        ),
        body: Column(
        children: <Widget>[
          ElevatedButton(onPressed: (){}, child: Text("Go to First Page"))
    ],
      ),
      ) );
  }
}
