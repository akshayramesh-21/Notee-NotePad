import 'package:flutter/material.dart';
import 'package:notepad/controller/function/addfunctions.dart';

import 'package:notepad/controller/hive/calss.dart';
import 'package:sizer/sizer.dart';




class Notepad extends StatelessWidget {
  Notepad({super.key});


  TextEditingController addtext = TextEditingController();
  String ?textcollect;
  int? keyget;



  @override
  Widget build(BuildContext context) {
    
 adddetails();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          
          Container(
            width: double.infinity,
            height: 15.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: TextField(
                controller: addtext,
                

                decoration: InputDecoration(
                  hintText: "Hey what's in your mind",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () async{
                if(addtext.text.isNotEmpty){
                    AddData objectadd=AddData(addtext.text,keyget );

         
                
                await detailsadd(objectadd);
                 addtext.clear();

                }
                
             

                 

                },
                icon: Icon(
                  Icons.add,
                  
                ),
                label: Text(
                  "ADD",
                 
                ),
              
              ),

            
            ],
          ),


          ValueListenableBuilder(
      valueListenable: addlist,
      builder: (context, added, child) => Expanded(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: added.length == 0 ? 0 : added.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              added[index].textdata.toString(),
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           IconButton(
  onPressed: () {
    keyget = index;
    addtext.text = added[index].textdata.toString();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(backgroundColor: Color.fromARGB(151, 115, 220, 127),
          title: Text("Edit Text", style: TextStyle(color: Colors.white),),
          content: Container(color: Colors.white,
            child: TextField(
              controller: addtext, // Assuming addtext is your TextEditingController
              decoration: InputDecoration(
                hintText: "Enter text",
              ),
            ),
          ),
          actions: [
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () async{
              
                AddData objectadd =await AddData(addtext.text, keyget);
              await  editdata(index,objectadd);
                 addtext.clear();
                  
        
         
                
           
                Navigator.pop(context);
              },
              child: Text('Update', style: TextStyle(color: Colors.black),),
            ),
          ],
        );
      },
    );
  },
  icon: Icon(Icons.edit, color: Color.fromARGB(255, 255, 255, 255),),
),
                            IconButton(
                                onPressed: () {
                                  deletedata(index);
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Color.fromARGB(255, 238, 22, 22),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                 Divider()
                ],
              );
            }),
      ),
    )
        ],
      ),
    );
  }
}
