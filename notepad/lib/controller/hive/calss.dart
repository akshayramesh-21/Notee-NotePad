

import 'package:hive_flutter/hive_flutter.dart';


part 'calss.g.dart';







@HiveType(typeId: 1)

class AddData {
  @HiveField(0)
  int?keyid1;
  
 
  @HiveField(1)
  String ?textdata;

 

   


      

  AddData(this.textdata, this.keyid1);
}



