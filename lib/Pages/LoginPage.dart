import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newapptest/Pages/TestLoginPage.dart';
import 'package:newapptest/routes/routers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRouter);
      setState(() {
        changedButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset("assets/images/Login.png", fit: BoxFit.cover),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter the username";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter the Password";
                          } else if (value.length < 8) {
                            return "Password length at least 8 charcters";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Sign Up"),
                    Container(
                      height: 10,
                      width: 1,
                      color: Colors.grey,
                    ),
                    Text("Forget password"),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),

                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changedButton ? 50 : 8),
                  child: InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changedButton ? 50 : 150,
                      height: changedButton ? 50 : 50,
                      alignment: Alignment.center,
                      child: changedButton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              "login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                    ),
                  ),
                ),

                //ElevatedButton(
                // child: Text("Login"),
                // style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                // onPressed: () {
                //   ;
                // },
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
