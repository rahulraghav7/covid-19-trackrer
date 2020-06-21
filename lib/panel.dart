import 'package:flutter/material.dart';
class Panelview extends StatelessWidget {
  final Map data;

  const Panelview({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2),
      shrinkWrap: true,
      children: <Widget>[
        Squarepanel(
          title: 'Confirmed',
          panelcolor: Colors.red[100],
          textcolor: Colors.red[900],
          count: data['cases'].toString(),
        ),
        Squarepanel(
           title: 'Active',
          panelcolor: Colors.blue[100],
          textcolor: Colors.blue[900],
          count: data['active'].toString(),
        ),
        Squarepanel(
           title: 'Recovered',
          panelcolor: Colors.green[100],
          textcolor: Colors.green[900],
          count: data['recovered'].toString(),
        ),
        Squarepanel(
           title: 'Death',
          panelcolor: Colors.grey[300],
          textcolor: Colors.grey[900],
          count: data['deaths'].toString(),
        ),

      ],
      ),
      
    );
  }
}

class Squarepanel extends StatelessWidget {
  final Color panelcolor;
  final Color textcolor;
  final String title;
  final String count;

  const Squarepanel({Key key, this.panelcolor, this.textcolor, this.title, this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width1=MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 80,
      width: width1/2,
      color: panelcolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(title,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 16,
            color: textcolor


          ),),
          Text(count,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: textcolor
          ),)
        ],
      ),
    );
  }
}