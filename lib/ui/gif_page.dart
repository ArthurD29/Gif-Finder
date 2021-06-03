import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {

  final Map _gifData;
  GifPage(this._gifData);

@override

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.network("https://i.pinimg.com/originals/58/e3/83/58e3834fdfe26e6d1853eb14d89cbff1.gif", fit: BoxFit.fitHeight, height: 60),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share),
              onPressed: (){
                Share.share(_gifData["images"]["fixed_height"]["url"]);
              }
              ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Image.network(_gifData["images"]["fixed_height"]["url"]),
      ),

    );
  }
}
