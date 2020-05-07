import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


    void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyStatefulWidget()
    ));
//void main() {
//  runApp(MyStatefulWidget()
//  );
//}

 class MyStatefulWidget extends StatefulWidget {
   @override
   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
 }
 
 class _MyStatefulWidgetState extends State<MyStatefulWidget> {
   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: EdgeInsets.only(top: 40.0, left: 8.0),
       child: Column (
         children : <Widget> [
          Card(
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                textDirection: TextDirection.ltr,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {
                        print("person");
                      },
                    ),
                   Expanded(
                     child: Text ("Child 1", textDirection: TextDirection.ltr,),
                   ),
                    IconButton(
                      icon: Icon(Icons.add, textDirection: TextDirection.ltr,),
                      onPressed: (){
                        print("add");
                      },
                    )
                  ],
              ),
            ),
          ),
           Padding(
             padding: EdgeInsets.only(top: 8.0),
             child: Card(
               child: Padding(
                 padding: EdgeInsets.all(24.0),
                 child: Row(
                   textDirection: TextDirection.ltr,
                   children: <Widget>[
                     IconButton(
                       icon: Icon(Icons.person),
                       onPressed: () {
                         print("person");
                       },
                     ),
                     Expanded(
                       child: Text ("Child 2", textDirection: TextDirection.ltr,),
                     ),
                     IconButton(
                       icon: Icon(Icons.add, textDirection: TextDirection.ltr,),
                       onPressed: (){
                         print("add");
                       },
                     )
                   ],
                 ),
               ),
             ),
           ),
           Image(
               image: AssetImage("images/images.jpeg")
           )
         ],
       ),
     );


   }
 }

 
