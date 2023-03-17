

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class P4View extends StatelessWidget {
  const P4View({super.key});

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
                "",
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
            child: Image.asset("assets/images/p4.png"),
          ),
        ),
        Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text("Démarrer une",style: TextStyle(fontSize: 42)),
               Row(mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("nouvelle",style: TextStyle(fontSize: 42)),
                   Text(" aventure",style: TextStyle(fontSize: 42,color: Color.fromARGB(255, 255, 42, 0))),
                 ],
               ),
               
            ],
          ),
        ),
        Container(
          height: 70,
          width:250,
          child: Expanded(child: Text(
           textAlign: TextAlign.center,
            "Des offres  à des prix imbattables et des réductions sur vos future voyages"))
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
            backgroundColor: Color.fromARGB(255, 180, 180, 180),),
            SizedBox(width: 5,),
          CircleAvatar(
            radius: 5,
            backgroundColor: Color.fromARGB(255, 180, 180, 180),),
            SizedBox(width: 5,),
          CircleAvatar(
            radius: 5,
            backgroundColor: Color.fromARGB(255, 255, 42, 0),),
        ],),    
        SizedBox(height: 20,),
        Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize:Size(220,40) ,
              
              backgroundColor: Color.fromARGB(255, 255, 42, 0)
            ),
            onPressed: (){}, child: Text("Suivant")),
        ),

      ]),
    );
  }
}