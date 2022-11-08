import 'package:flutter/material.dart';

import '../widgets/Custom_Button.dart';
import '../widgets/Custom_TextField.dart';


class LoginTwo extends StatefulWidget {
  const LoginTwo({Key? key}) : super(key: key);

  @override
  State<LoginTwo> createState() => _LoginTwoState();
}

class _LoginTwoState extends State<LoginTwo> {
  final _username = TextEditingController();
  final _password = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("Login",
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
            height: 450,
            width: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(50.0),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset('assets/login_2.png', color: Colors.lightBlueAccent,)),
                  ],
                ),



                const SizedBox(
                  height: 5.0,
                ),

                MyTextField(hintText: "Username",labelText: "Username",prefixIcon: Icons.person_add),

                const SizedBox(
                  height: 20.0,
                ),
                MyTextField(hintText: "Password",labelText: "Password",prefixIcon: Icons.key,),
                const SizedBox(
                  height: 20.0,
                ),



                // Login Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
      ),
    );
  }
}

