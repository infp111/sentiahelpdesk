import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../controller/query_controller.dart';
import 'dash_board_v2.dart';
import 'dashboard.dart';



class AddQuery extends StatefulWidget {
  const AddQuery({Key? key}) : super(key: key);

  @override
  State<AddQuery> createState() => _AddQueryState();
}

class _AddQueryState extends State<AddQuery> {

  String? _queryType;
  String? _chooseProject;

  Query query = Query("", "","", "");

  var url = Uri.parse('http://localhost:3306/sentiahelpdesk');

  // Future save() async {
  //   query.project = _chooseProject.toString();
  //   query.queryType = _queryType.toString();
  //   var res = await http.post(url,
  //       headers: {'Content-Type': 'application/json'},
  //       body: json.encode({'project': query.project, 'module': query.module, 'queryType': query.queryType, 'queryDescription': query.queryDescription}));
  //
  //   print(res.body);
  //   if (res.body != null) {
  //
  //     Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => const Dashboard(),
  //         ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text("Add a Query",
          style:
          TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white),),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/qna.png')
              ),

              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  //Dropdown for Choose Project
                  RichText(
                    text: const TextSpan(
                        text: 'Choose Project',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                              )
                          )
                        ]
                    ),
                  ),

                  Container(
                    width: 300,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black, style: BorderStyle.solid, width: 1),
                    ),
                    child:  DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        dropdownColor: Colors.white,
                        hint: Text("Please Select a Project"),
                        value: _chooseProject,
                        items: const <DropdownMenuItem<String>>[
                          DropdownMenuItem(
                            child: Text('BC & PC',style:
                            TextStyle(fontSize: 12, color: Colors.black),),
                            value: 'bcpc',
                          ),
                          DropdownMenuItem(child: Text('ACHF',style:
                          TextStyle(fontSize: 12, color: Colors.black),), value: 'achf'),
                        ],

                        onChanged: (String? value) {
                          setState(() => _chooseProject = value!);
                        },
                      ),
                    ),
                  ),





                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  //Dropdown for Query Type
                  RichText(
                    text: const TextSpan(
                        text: 'Choose Query Type',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                              )
                          )
                        ]
                    ),
                  ),

                  Container(
                    width: 300,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black, style: BorderStyle.solid, width: 1),
                    ),
                    child:  DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        dropdownColor: Colors.white,
                        hint: const Text("Please Select Type"),
                        value: _queryType,
                        items: const <DropdownMenuItem<String>>[
                          DropdownMenuItem(
                            child: Text('Issue',style:
                            TextStyle(fontSize: 12, color: Colors.black),),
                            value: 'issue',
                          ),
                          DropdownMenuItem(child: Text('Need Information',style:
                          TextStyle(fontSize: 12, color: Colors.black),), value: 'needinfo'),
                        ],

                        onChanged: (String? value) {
                          setState(() => _queryType = value!);
                        },
                      ),
                    ),
                  ),





                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                        text: 'Module',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: ' * ',
                              style: TextStyle(
                                color: Colors.red,
                              )
                          )
                        ]
                    ),
                  ),


                  SizedBox(
                    width: 300,
                    child: TextField(
                        //controller: _queryModule,
                        controller: TextEditingController(text: query.module),
                        onChanged: (val) {
                          query.module = val;
                        },

                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.comment_outlined),

                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),


//Text Box for Query Description

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  RichText(
                    text: const TextSpan(
                        text: 'Description',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                              )
                          )
                        ]
                    ),
                  ),

                  SizedBox(
                    width: 300,
                    child: TextField(
                        //controller: _queryDescription,
                        controller: TextEditingController(text: query.queryDescription),
                        onChanged: (val) {
                          query.queryDescription = val;
                        },

                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.comment),
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 120.0,
                    height: 45.0,
                    child: ElevatedButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey[800],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            textStyle: const TextStyle(fontSize: 19)),
                        onPressed: ()  {
                          Navigator.pushNamed(context,'/dashboard');
                        },
                        child: const Text(
                          'Save',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),



                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
