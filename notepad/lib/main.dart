import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:notepad/controller/hive/calss.dart';
import 'package:notepad/view/pages/home.dart';

import 'package:sizer/sizer.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await Hive.initFlutter();
 if(!Hive.isAdapterRegistered(AddDataAdapter().typeId)){
 Hive.registerAdapter(AddDataAdapter());
 }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
     return MaterialApp(debugShowCheckedModeBanner: false,
        home: Home(),
      );
      
    },
       
    );
  }}
    