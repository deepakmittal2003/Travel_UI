import 'package:flutter/material.dart';
void main(){
  runApp(Login());
}
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Travel App",
          ),
          backgroundColor: Colors.blueAccent.shade100,
        ),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 80.0,
                    backgroundImage: AssetImage("images/travel.jpg"),
                  ),
                  SizedBox(height: 5.0,),
                  Text("CHALO CHALE",
                    style: TextStyle(
                      fontSize: 29.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(height: 10.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.black,
                    ),),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "enter your email",
                        suffixIcon: Icon(Icons.email),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "enter your password",
                        suffixIcon: Icon(Icons.password),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      "Forgot Password ",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight:FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 250.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.cyan)
                      ),
                      onPressed: (){},
                      child: Text("Sign in"),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("New User ?",style: TextStyle(color: Colors.black54,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),),
                      Text("Sign Up",style: TextStyle(color: Colors.black54,
                          fontWeight: FontWeight.bold,fontSize: 20.0),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}