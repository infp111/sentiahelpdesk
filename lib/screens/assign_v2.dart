import 'package:flutter/material.dart';

import '../widgets/Custom_Button.dart';
import '../widgets/Custom_TextField.dart';




class AssignTwo extends StatefulWidget {
  const AssignTwo({Key? key}) : super(key: key);

  @override
  State<AssignTwo> createState() => _AssignTwoState();
}

class _AssignTwoState extends State<AssignTwo> {

  late String _assignDev;
  late String _prioLevel;
  late String _appImpact;
  late String _reproduce;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("Assign",
          style:
          TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white),),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bulb.jpg"),
              fit: BoxFit.cover,

            )),
        child: Center(
          child: Container(
            height: 620,
            width: 500,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(50.0),
            ),
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      SizedBox(
                          width: 120,
                          height: 120,
                          child: Image.asset('assets/assign.png')),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      //Dropdown for Choose Project
                      RichText(
                        text: const TextSpan(
                            text: 'Assign To',
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
                              color: Colors.lightBlueAccent, style: BorderStyle.solid, width: 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:  DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            dropdownColor: Colors.white,
                            hint: Text("Please Select Developer"),
                            value: _assignDev,
                            items: const <DropdownMenuItem<String>>[
                              DropdownMenuItem(
                                child: Text('Ramesh',style:
                                TextStyle(fontSize: 12, color: Colors.black),),
                                value: 'ramesh',
                              ),
                              DropdownMenuItem(
                                child: Text('Priyanka',style:
                                TextStyle(fontSize: 12, color: Colors.black),),
                                value: 'priyanka',
                              ),
                              DropdownMenuItem(
                                child: Text('Rakesh',style:
                                TextStyle(fontSize: 12, color: Colors.black),),
                                value: 'rakesh',
                              ),

                            ],

                            onChanged: (String? value) {
                              setState(() => _assignDev = value!);
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
                            text: 'Priority Level',
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
                              color: Colors.lightBlueAccent, style: BorderStyle.solid, width: 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:  DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            dropdownColor: Colors.white,
                            hint: const Text("Please Select an Option"),
                            value: _prioLevel,
                            items: const <DropdownMenuItem<String>>[
                              DropdownMenuItem(
                                child: Text('Critical',style:
                                TextStyle(fontSize: 12, color: Colors.black),),
                                value: 'critical',
                              ),
                              DropdownMenuItem(child: Text('High',style:
                              TextStyle(fontSize: 12, color: Colors.black),), value: 'high'),
                              DropdownMenuItem(child: Text('Medium',style:
                              TextStyle(fontSize: 12, color: Colors.black),), value: 'medium'),
                              DropdownMenuItem(child: Text('Low',style:
                              TextStyle(fontSize: 12, color: Colors.black),), value: 'low'),
                            ],

                            onChanged: (String? value) {
                              setState(() => _prioLevel = value!);
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
                            text: 'App Impact',
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
                              color: Colors.lightBlueAccent, style: BorderStyle.solid, width: 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:  DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            dropdownColor: Colors.white,
                            hint: const Text("Please Select an Option"),
                            value: _appImpact,
                            items: const <DropdownMenuItem<String>>[
                              DropdownMenuItem(
                                child: Text('Minor',style:
                                TextStyle(fontSize: 12, color: Colors.black),),
                                value: 'minor',
                              ),
                              DropdownMenuItem(child: Text('Major',style:
                              TextStyle(fontSize: 12, color: Colors.black),), value: 'Major'),
                              DropdownMenuItem(
                                child: Text('Critical',style:
                                TextStyle(fontSize: 12, color: Colors.black),),
                                value: 'critical',
                              ),
                            ],

                            onChanged: (String? value) {
                              setState(() => _appImpact = value!);
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
                            text: 'Reproducible',
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
                              color: Colors.lightBlueAccent, style: BorderStyle.solid, width: 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:  DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            dropdownColor: Colors.white,
                            hint: const Text("Please Select Occurrence"),
                            value: _reproduce,
                            items: const <DropdownMenuItem<String>>[
                              DropdownMenuItem(
                                child: Text('Always',style:
                                TextStyle(fontSize: 12, color: Colors.black),),
                                value: 'always',
                              ),
                              DropdownMenuItem(child: Text('Sometime',style:
                              TextStyle(fontSize: 12, color: Colors.black),), value: 'sometime'),
                              DropdownMenuItem(
                                child: Text('Not Require',style:
                                TextStyle(fontSize: 12, color: Colors.black),),
                                value: 'notrequire',
                              ),
                            ],

                            onChanged: (String? value) {
                              setState(() => _reproduce = value!);
                            },
                          ),
                        ),
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
                            text: 'Action Required',
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
                          child: MyTextField(labelText: "Action Required",hintText: "Action Required",maxL: 3,)),

                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MainButton(
                          title: "Assign",
                          onPressed: () {
                            Navigator.pushNamed(context, '/dashboard');
                          }),



                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
