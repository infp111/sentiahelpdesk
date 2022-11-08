// import 'package:flutter/material.dart';
//
//
//
// class AddQuery extends StatefulWidget {
//   const AddQuery({Key? key}) : super(key: key);
//
//   @override
//   State<AddQuery> createState() => _AddQueryState();
// }
//
// class _AddQueryState extends State<AddQuery> {
//   final _queryModule = TextEditingController();
//   final _queryDescription = TextEditingController();
//   String? _queryType;
//   List<String> _dropdownProject = [ "BC & PC", "ACHF", ];
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//
//       appBar: AppBar(
//         backgroundColor: Colors.grey[800],
//         title: const Text("Add a Query",
//           style:
//           TextStyle(fontSize: 25,
//               fontWeight: FontWeight.bold,
//               color: Colors.white),),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Container(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//
//               children: [
//
//                 const SizedBox(
//                   height: 20.0,
//                 ),
//
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     RichText(
//                       text: const TextSpan(
//                           text: 'Choose Project',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold),
//                           children: [
//                             TextSpan(
//                                 text: ' *',
//                                 style: TextStyle(
//                                   color: Colors.red,
//                                 )
//                             )
//                           ]
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 15,
//                     ),
//                     Container(
//                       padding: EdgeInsets.symmetric(horizontal: 10.0),
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                             color: Colors.black, style: BorderStyle.solid, width: 1),
//                       ),
//                       child: DropdownButton(
//                         items: _dropdownProject
//                             .map((value) => DropdownMenuItem(
//                           child: Text("Select"),
//                           value: value,
//                         ))
//                             .toList(),
//                         onChanged: (String? value) {
//                           setState(() => _dropdownProject = value as List<String>);
//                         },
//                         isExpanded: false,
//                         value: _dropdownProject.first,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20.0,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     RichText(
//                       text: const TextSpan(
//                           text: 'Module',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold),
//                           children: [
//                             TextSpan(
//                                 text: ' *',
//                                 style: TextStyle(
//                                   color: Colors.red,
//                                 )
//                             )
//                           ]
//                       ),
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//
//                     SizedBox(
//                       width: 300,
//                       child: TextField(
//                           controller: _queryModule,
//                           decoration: const InputDecoration(
//                             border: OutlineInputBorder(),
//
//
//                           )),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20.0,
//                 ),
//
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     RichText(
//                       text: const TextSpan(
//                           text: 'Choose Query Type',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold),
//                           children: [
//                             TextSpan(
//                                 text: ' *',
//                                 style: TextStyle(
//                                   color: Colors.red,
//                                 )
//                             )
//                           ]
//                       ),
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//
//                     DropdownButton<String>(
//                       dropdownColor: Colors.black38,
//                       value: _queryType,
//                       items: const <DropdownMenuItem<String>>[
//                         DropdownMenuItem(
//
//                           child: Text('Issue',style:
//                           TextStyle(fontSize: 12, color: Colors.white),),
//                           value: 'Issue',
//
//                         ),
//                         DropdownMenuItem(child: Text('Need Info',style:
//                         TextStyle(fontSize: 12, color: Colors.white),), value: 'needinfo'),
//                       ],
//
//                       onChanged: (String? value) {
//                         setState(() => _queryType = value!);
//                       },
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20.0,
//                 ),
//                 Row(
//
//                   children: [
//                     const SizedBox(
//                       width: 70,
//                     ),
//                     RichText(
//                       text: const TextSpan(
//                           text: 'Description',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold),
//                           children: [
//                             TextSpan(
//                                 text: ' *',
//                                 style: TextStyle(
//                                   color: Colors.red,
//                                 )
//                             )
//                           ]
//                       ),
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//
//                     SizedBox(
//                       width: 300,
//                       child: TextField(
//                           controller: _queryDescription,
//                           keyboardType: TextInputType.multiline,
//                           maxLines: 5,
//                           decoration: const InputDecoration(
//                             border: OutlineInputBorder(),
//                           )),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 40.0,
//                 ),
//
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       width: 120.0,
//                       height: 45.0,
//                       child: ElevatedButton(
//                           style: TextButton.styleFrom(
//                               backgroundColor: Colors.grey[800],
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20.0)
//                               ),
//                               textStyle: const TextStyle(fontSize: 19)),
//                           onPressed: () async {
//                             setState(() async {
//
//                             });
//                           },
//                           child: const Text(
//                             'Save',
//                             style: TextStyle(color: Colors.white),
//                           )),
//                     ),
//
//
//
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
