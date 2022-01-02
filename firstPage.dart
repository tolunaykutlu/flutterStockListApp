import 'package:flutter/material.dart';
import 'stok.dart';

class HomeScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("HOŞ GELDİNİZ"),
            centerTitle: true,
            backgroundColor: Colors.greenAccent),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Container(
            width: 400,
            height: 200,
            child: Center(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => StokPage()));
                    });
                  },
                  child: Text(
                    "STOK İŞLEMLERİ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Column(
            children: [
              Container(
                width: 500,
                height: 500,
                child: Center(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "FASON İŞLEMLERİ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ],
          ),
        ])));
  }

  ButtonStyle bs() {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.amber),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //materialapp tarzında butona şekil verme
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))));
  }
}
