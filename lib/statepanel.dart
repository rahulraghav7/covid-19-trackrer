import 'package:flutter/material.dart';
class Statepanel extends StatelessWidget {
   final Map statedate;

  const Statepanel({Key key, this.statedate}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
   
    return Container( 
      child: ListView.builder(itemBuilder: (context,index){
        
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25),
              child: Text(statedate['statewise'][index+1]['state']+' currently has '+statedate['statewise'][index+1]['confirmed']+' cases',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            
            

          ],
        );
    
      },
      physics:ScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 32,),
    );
  }
}