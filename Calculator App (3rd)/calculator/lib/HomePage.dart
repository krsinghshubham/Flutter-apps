import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1=0, num2=0,sum=0;
  final TextEditingController t1= new TextEditingController(text:"0");
  final TextEditingController t2=new TextEditingController(text:"0");
  void doMulti(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1*num2;
    });

  }
   void add(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1+num2;
    });

  }
   void sub(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1-num2;
    });

  }
   void div(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1~/num2;
    });

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Do Your calculations here")),
      body: new Container(
          padding: EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
              
              children: <Widget>[
                new Text("output: $sum",
                style: new TextStyle(fontSize:20.0, fontWeight: FontWeight.bold,color:Colors.purple),)
              ,
            
            
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "enter 1st no."),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "enter 2nd no."),
                controller: t2,
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("+"),
                    color: Colors.blueAccent,
                    onPressed: add,
                  ),
                  // new Padding(padding: const EdgeInsets.only(right: 0.550)),
                  new MaterialButton(
                    child: new Text("-"),
                    color: Colors.blueAccent,
                    onPressed: sub,
                  )
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("*"),
                    color: Colors.blueAccent,
                    onPressed: doMulti,
                  ),
                  // new Padding(padding: const EdgeInsets.only(right: 20.0)),
                  new MaterialButton(
                    child: new Text("/"),
                    color: Colors.blueAccent,
                    onPressed: div,
                  )
                ],
              ),
              new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
              new Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                child: new Text("Clear"),
                color:Colors.blueAccent,
                onPressed: (){},
              )],)
            ],
          )),
    );
  }
}
