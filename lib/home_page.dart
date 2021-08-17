import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final fieldText = TextEditingController();
  String data = '';
  String preview = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'Home',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
                icon: Icon(Icons.refresh, size: 30),
                onPressed: () {
                  fieldText.clear();
                  setState(() {
                    data = '';
                    preview = '';
                  });
                }),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.grey[300],
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Center(
                      child: Container(
                          width: 200,
                          height: 150,
                          /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                          child: Image.asset('assets/brand-logo.png')),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text("Type Your Text",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      controller: fieldText,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Your Text',
                          hintText: 'Type here...'),
                      onChanged: (value) {
                        setState(() {
                          data = value;
                        });
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        preview = data;
                      });
                    },
                    child: Text('Preview',
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 300,
                    child: Text(
                      preview ?? '',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
