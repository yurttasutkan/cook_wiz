import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height, 
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Color.fromARGB(255, 228, 57, 14),
                Color.fromARGB(255, 193, 81, 22)
              ])),
              child:Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Center(
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                    height: 200,
                  ),
                ),
                
                const SizedBox(
                  height: 40,
                ),
                Container(
                  child: Form(
                    key: _formKey,
                    child: Column(children: [
                      const SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "E-mail",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32))),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Username",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32))),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32))),
                      ),
                    const SizedBox(
                        height: 40,
                      ),
                     Padding(
                      padding: const EdgeInsets.only(right: 24.0, left: 24),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(32)),
                            primary: Color.fromARGB(255, 228, 57, 14),
                            onPrimary: Colors.white,
                            minimumSize: const Size(double.infinity, 60)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/homepage');
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 15,
                  ) , 
                  GestureDetector(
                        child: Text(
                          "New User? Create Account",
                          style: TextStyle(color: Colors.blueGrey,fontSize: 16),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/register');
                        },
                      ),
                    ]),
                  ),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 237,237,233),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 5.0,
                            spreadRadius: 0.0,
                            offset: Offset(-1.0, -1.0))
                      ]),
                  height: MediaQuery.of(context).size.height * 0.6,
                )
              ],
            ),
          ),
          ),
        ),
    );
  }
}