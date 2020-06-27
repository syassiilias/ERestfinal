import 'package:flutter/material.dart';

class FavPage extends StatefulWidget {
  @override
  _FavPageState createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.only(top:200.0),
            child: Column(
                children:<Widget>[
                  Text('Pour plus des informatons veuillez nous contacter : '
                    , style: TextStyle(fontSize:15, fontWeight: FontWeight.w900, color: Colors.black38),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top:50.0),
                      child: Text(
                        'E-restaurant@gmail.com', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black38),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(top:25.0),
                      child: Text(
                        'tel: +212661908988', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black38),
                      )),
                 ]
            )));
  }
}
