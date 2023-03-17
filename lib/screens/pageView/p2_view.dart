
import 'package:flutter/material.dart';

class P2View extends StatelessWidget {
  const P2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                "skip",
                style: TextStyle(
                color: Color.fromARGB(255, 180, 180, 180),
                fontSize: 16
              ),),),
          ),
            
        ),
        
        Container(
          height: 250,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/p2.png"),
          ),
        ),
        SizedBox(
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Help",style: TextStyle(fontSize: 42,color: Color.fromARGB(255, 255, 42, 0)),),
              Text("&",style: TextStyle(fontSize: 42)),
              Text("Win",style: TextStyle(fontSize: 42,color: Color.fromARGB(255, 255, 42, 0))),
            ],
          ),
        ),
        SizedBox(
          height: 70,
          width:250,
          child: Expanded(child: Text(
           textAlign: TextAlign.center,
            "Afin de profiter d'une expérience absolue et d'un confort incomparable, voyagez avec les agence de voyage"))
            ),
           SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          CircleAvatar(
            radius: 5,
            backgroundColor: Color.fromARGB(255, 180, 180, 180),),
            SizedBox(width: 5,),
          CircleAvatar(
            radius: 5,
            backgroundColor: Color.fromARGB(255, 255, 42, 0),),
            SizedBox(width: 5,),
          CircleAvatar(
            radius: 5,
            backgroundColor: Color.fromARGB(255, 180, 180, 180),),
            SizedBox(width: 5,),
          CircleAvatar(
            radius: 5,
            backgroundColor: Color.fromARGB(255, 180, 180, 180),),
        ],),    
        SizedBox(height: 20,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize:Size(220,40) ,
            
            backgroundColor: Color.fromARGB(255, 255, 42, 0)
          ),
          onPressed: (){}, child: Text("Suivant")),

      ]),
    );
  }
}