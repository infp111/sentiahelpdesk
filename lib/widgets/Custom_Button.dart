import 'package:flutter/material.dart';


class MainButton extends StatelessWidget {

  final String? title;
  final Function()? onPressed;


  MainButton({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
            ),
            textStyle: const TextStyle(fontSize: 19)),
        onPressed: onPressed,
        child: Container(
          width: 100.0,
          height: 40.0,
          child: Center(
            child: Text(
              title!,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}