

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTextField extends StatefulWidget{

  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool? isPassword;
  final bool? ReadOnly;
  final int? maxL;

MyTextField({
  this.controller, this.ReadOnly,this.maxL, this.isPassword, this.prefixIcon, this.hintText, this.labelText, this.suffixIcon

});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyTextFieldState();
  }


}

class MyTextFieldState extends State<MyTextField>{

  @override
  Widget build(BuildContext context) {

return Container(
  child: TextFormField(

    maxLines: widget.maxL,
    controller: widget.controller,
    obscureText:null == widget.isPassword ? false : true,
    readOnly:null == widget.ReadOnly ? false : true,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Colors.lightBlueAccent,
          width: 1.0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Colors.lightBlueAccent,
          width: 2.0,
        ),
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Colors.lightBlueAccent,
          width: 2.0,
        ),
      ),

      hintText:null == widget.hintText ? "" : widget.hintText,
      labelText:null == widget.labelText ? "" : widget.labelText,
      prefixIcon:null == widget.prefixIcon ? null : Icon(widget.prefixIcon),
      suffixIcon:null == widget.suffixIcon ? null : Icon(widget.suffixIcon),

    ),
  ),
);
  }

  }