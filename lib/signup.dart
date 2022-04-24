import 'package:flutter/material.dart';
import 'package:googletask2/share.dart';

class Sign extends StatefulWidget {
  Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                width: 200,
                child: Image.asset("images/3.jpg"),
              ),
              const SizedBox(
                height: 20,
              ),
              defaulttextformfield(
                  controller: TextEditingController(),
                  label: "Enter Name",
                  raduis: 15,
                  suffix: IconButton(
                      onPressed: () {}, icon: Icon(Icons.person_add))),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              defaulttextformfield(
                  controller: TextEditingController(),
                  label: "Enter Phone",
                  key: TextInputType.number,
                  raduis: 15,
                  suffix:
                      IconButton(onPressed: () {}, icon: Icon(Icons.phone))),
              const SizedBox(
                height: 20,
              ),
              defaulttextformfield(
                  controller: TextEditingController(),
                  label: "Enter Birth of Date",
                  key: TextInputType.datetime,
                  raduis: 15,
                  suffix: IconButton(
                      onPressed: () {}, icon: Icon(Icons.data_array))),
              const SizedBox(
                height: 20,
              ),
              defaulttextformfield(
                  controller: TextEditingController(),
                  label: "Enter Gender",
                  raduis: 15,
                  suffix:
                      IconButton(onPressed: () {}, icon: Icon(Icons.person))),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              defaultbutton(text: "Sign Up", onpress: () {})
            ],
          ),
        ),
      ),
    );
  }
}
