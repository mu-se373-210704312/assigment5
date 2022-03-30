import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  var counter="images/Adsız.jpeg";

  void clicked(){
    setState(() {
      counter="images/goko.jpeg";
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ImageVievApp"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.topLeft,

              child: ElevatedButton(
                child: Text("Add Image"),
                onPressed: clicked,
              ),
            ),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),

              child: Image(image: AssetImage(counter),fit: BoxFit.fill,),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                child: Text("Open Next Page"),
                onPressed: () {},
              ),
            ),
            Expanded(child: ListView(
              children: const [
                Card(
                    child: ListTile(
                      title:Text("Ahmet") ,
                    )
                ),
                Card(
                  child: ListTile(
                    title:Text("Mehmet"),
                  ),
                ),
                Card(
                    child: ListTile(
                      title: Text("Ayşe"),
                    )
                ),
                Card(
                    child: ListTile(
                      title: Text("Fatma"),
                    )
                ),
                Card(
                    child: ListTile(
                      title: Text("Hayriye"),
                    )
                ),
              ],
              padding: EdgeInsets.all(10),
            ))

          ],
        ),
      ),
    );
  }
}
