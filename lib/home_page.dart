import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  var num1=0, num2=0, sum=0;

  var t1 = TextEditingController(text: "0");
  var t2 = TextEditingController(text: "0");

  void doAddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }
  void doSubtraction(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }
  void doMultiplication(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void doDivision(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Output: $sum",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.purpleAccent,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Number 1",
              ),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Number 2",
              ),
              controller: t2,
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  child: Text("+", style: TextStyle(fontSize: 20.0,),),
                    color: Colors.greenAccent,
                    onPressed: doAddition,
                ),
                MaterialButton(
                  child: Text("-", style: TextStyle(fontSize: 20.0,),),
                  color: Colors.greenAccent,
                  onPressed: doSubtraction,
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  child: Text("*", style: TextStyle(fontSize: 20.0,),),
                  color: Colors.greenAccent,
                  onPressed: doMultiplication,
                ),
                MaterialButton(
                  child: Text("/", style: TextStyle(fontSize: 20.0,),),
                  color: Colors.greenAccent,
                  onPressed: doDivision,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
