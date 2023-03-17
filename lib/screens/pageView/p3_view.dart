

import 'package:flutter/material.dart';

class P3View extends StatelessWidget {
  const P3View({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      const SizedBox(height: 20,),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
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
      
      SizedBox(
        height: 250,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/p3.png"),
        ),
      ),
      SizedBox(
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const  [
             Text("Daily",style: TextStyle(fontSize: 42)),
             Text("Tips",style: TextStyle(fontSize: 42,color: Color.fromARGB(255, 255, 42, 0))),
          ],
        ),
      ),
      const SizedBox(
        height: 70,
        width:250,
        child: Expanded(child: Text(
         textAlign: TextAlign.center,
          "Des offres  à des prix imbattables et des réductions sur vos future voyages"))
          ),
         const SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
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
           SizedBox(width: 5,),
         CircleAvatar(
          radius: 5,
          backgroundColor: Color.fromARGB(255, 180, 180, 180),),
      ],),    
      const SizedBox(height: 20,),
      Align(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize:const Size(220,40) ,
            
            backgroundColor: const Color.fromARGB(255, 255, 42, 0)
          ),
          onPressed: (){}, child: const Text("Suivant")),
      ),

    ]);
  }
}