import 'dart:convert';
import 'statepanel.dart';
import 'package:flutter/material.dart';
import 'panel.dart';
import 'package:http/http.dart' as http;

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Map data;
  void fetchdata()async{
    http.Response response = await http.get('https://disease.sh/v2/countries/india?yesterday=false');
    setState(() {
      data=json.decode(response.body);
    });
  }
  Map statedata;
  void fetchdata2()async{
    http.Response response = await http.get('https://api.covid19india.org/data.json');
    setState(() {
      statedata=json.decode(response.body);
    });
  }
  @override
  void initState() {
    
    fetchdata();
    fetchdata2();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212B46),
      appBar: AppBar(
        title: Text('Caronavirus Tracker'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text('India',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  color: Colors.deepOrangeAccent
                ),),
              ),
            ),
            data==null?CircularProgressIndicator():Panelview(data: data,),
           
            
            statedata==null?Container(child: Text('loading'),):Statepanel(statedate: statedata,)

          ],

        ),
      ),

    );
  }
}