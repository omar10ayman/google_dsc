import 'package:flutter/material.dart';
import 'package:googletask2/share.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailcontrol = TextEditingController();
  var passcontrol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset("images/1.png"),
                ),
                const SizedBox(
                  height: 20,
                ),
                defaulttextformfield(
                    controller: emailcontrol,
                    label: "Enter Email",
                    raduis: 15,
                    suffix:
                        IconButton(onPressed: () {}, icon: Icon(Icons.email))),
                const SizedBox(
                  height: 20,
                ),
                defaulttextformfield(
                    controller: passcontrol,
                    label: "Enter Password",
                    raduis: 15,
                    suffix: IconButton(
                        onPressed: () {}, icon: Icon(Icons.remove_red_eye))),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(" Have no account ?"),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("sign");
                        },
                        child: Text("Click Here",
                            style: TextStyle(color: Colors.blue[900])))
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                defaultbutton(text: "Login", onpress: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
