// import 'package:flutter/material.dart';
// import 'package:notepad/addfunctions/addfunctions.dart';
// import 'package:notepad/home/notepad.dart';

// class notescreen extends StatelessWidget {
//   notescreen({super.key});
//   int? keyget;

//   @override
//   Widget build(BuildContext context) {
//     return ValueListenableBuilder(
//       valueListenable: addlist,
//       builder: (context, added, child) => Expanded(
//         child: ListView.builder(
//             shrinkWrap: true,
//             itemCount: added.length == 0 ? 0 : added.length,
//             itemBuilder: (context, index) {
//               return Column(
//                 children: [
//                   SizedBox(
//                     width: double.infinity,
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: Container(
//                             width: double.infinity,
//                             child: Text(
//                               added[index].textdata.toString(),
//                               style: TextStyle(
//                                 fontSize: 20,
//                               ),
//                             ),
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(15)),
//                           ),
//                         ),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             IconButton(
//                                 onPressed: () {





//                                 },
//                                 icon: Icon(
//                                   Icons.edit,
//                                   color: Colors.blueGrey,
//                                 )),
//                             IconButton(
//                                 onPressed: () {
//                                   deletedata(index);
//                                 },
//                                 icon: Icon(
//                                   Icons.delete,
//                                   color: Colors.blueGrey,
//                                 )),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   Container(
//                     width: double.infinity,
//                     height: 5,
//                     color: Color.fromARGB(255, 163, 160, 160),
//                   )
//                 ],
//               );
//             }),
//       ),
//     );
//   }
// }
