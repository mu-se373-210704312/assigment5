import "package:flutter/material.dart";
import"main.dart";
void main() {
  runApp(secondScreen());
}


class secondScreen extends StatefulWidget {
  const secondScreen({Key? key}) : super(key: key);

  @override
  State<secondScreen> createState() => _secondScreenState();
}

class _secondScreenState extends State<secondScreen> {
  String dropdownValue = 'About';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: DropdownButton<String>(

            icon: const Icon(Icons.menu),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['About', 'Settings', 'Exit',]
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),))
        ],
          title: const Text("ImageVievApp"),
        ),
        body: Column(
        children: <Widget>[
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Go to First Page"))
    ],
      ),
      ) );
  }
}
