

import 'package:flutter/material.dart';

Future<dynamic> bottomsheet(BuildContext context) {
    return showModalBottomSheet(context: context, builder: (context) =>
                            Container(
                              child: Column(children: [ SizedBox(height: 10,),
                                TextFormField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 5, color: const Color.fromARGB(255, 194, 193, 188)))),),
                                 ElevatedButton.icon(onPressed: (){

                                  
                                 }, icon: Icon(Icons.update), label: Text("Upadte"))
                              ],),
                            
                            )  );
  }