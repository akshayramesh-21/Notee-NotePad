

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notepad/controller/hive/calss.dart';


ValueNotifier<List<AddData>>addlist=ValueNotifier([]);

Future<void> detailsadd(AddData objectadd) async{
 
 final keepdata= await Hive.openBox<AddData>('model_db');

 
 
 adddetails();

 addlist.notifyListeners();

}


Future<void> adddetails() async{
  final keepdata= await Hive.openBox<AddData>('model_db');
  addlist.value.clear();
  addlist.value.addAll(keepdata.values);
  addlist.notifyListeners();



}

Future<void> deletedata(int indexvalue) async{
   final keepdata= await Hive.openBox<AddData>('model_db');
   keepdata.deleteAt(indexvalue);
   print(indexvalue);
   adddetails();
}

Future<void> editdata(int keyid,AddData objectadd, ) async{
   

   final keepdata= await Hive.openBox<AddData>('model_db');
  //  final keyid= await keepdata.add(objectadd);
   keepdata.putAt(keyid,objectadd);
 
   adddetails();
}

