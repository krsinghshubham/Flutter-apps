import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int finalscore;
  final Function functhandler;

  Result(this.finalscore,this.functhandler);
 

  String get resultP {
    String rstext;
    if (finalscore <= 8) {
      rstext = "you are awesome";
    } else if (finalscore <= 12) {
      rstext = "pretty likable";
    } else if (finalscore <= 16) {
      rstext = "you are strange";
    } else {
      rstext = "you are bad";
    }
    return rstext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultP,
            style: TextStyle(
                fontSize: 36, color: Colors.red, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(child:Text('restart quiz'), onPressed:functhandler)
        ],
      ),
    );
  }
}
