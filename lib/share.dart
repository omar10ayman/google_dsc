import 'package:flutter/material.dart';

Widget defaulttextformfield({
  required dynamic controller,
  required String label,
  double raduis = 15.0,
  IconButton? suffix,
  bool ispass = false,
  Function? valide,
}) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (s) {
          return valide!(s); // must be put return and put s in ()
        },
        controller: controller,
        obscureText: ispass,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
            color: Colors.black,
          ),
          suffixIcon: suffix,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.circular(raduis))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 2,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(raduis))),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        ),
      ),
    );

Widget defaultbutton({
  required String text,
  required Function onpress,
}) =>
    ElevatedButton(
        onPressed: () {
          onpress(); // right type for anyouns functoin
        },
        style: ElevatedButton.styleFrom(primary: Colors.blue[800]),
        child: Text(
          text,
          style: const TextStyle(fontSize: 25),
        ));
