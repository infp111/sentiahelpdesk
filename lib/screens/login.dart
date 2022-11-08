import 'package:flutter/material.dart';

import '../widgets/Custom_Button.dart';
import '../widgets/Custom_TextField.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _username = TextEditingController();
  final _password = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text("Login",
          style:
          TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white),),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Row(


                children: [
                  const SizedBox(
                    width: 215.0,
                  ),
                  SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset('assets/login_2.png')),
                ],
              ),



              const SizedBox(
                height: 5.0,
              ),

              MyTextField(hintText: "Testing",labelText: "Username",prefixIcon: Icons.abc_rounded,suffixIcon: Icons.ice_skating),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(
                        text: 'Username',
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
                  const SizedBox(
                    width: 15,
                  ),

                  SizedBox(
                    width: 300,
                    child: TextField(
                        controller: _username,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(
                        text: 'Password',
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
                  const SizedBox(
                    width: 15,
                  ),

                  SizedBox(
                    width: 300,
                    child: TextField(
                        controller: _password,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.key),

                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),

              Row(

                children: [
                  const SizedBox(width: 360,),
                  MainButton(
                      title: "Login",
                      onPressed: () {
                        Navigator.pushNamed(context, '/dashboard');
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

