import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'odilenkana@gmail.com',
      decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)),
    );

    final password = TextFormField(
        autofocus: false,
        initialValue: 'some password',
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ));

        final loginButton =Padding(padding: EdgeInsets.symmetric(vertical:16.0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          shadowColor: Colors.lightBlueAccent.shade100,
          elevation: 5.0,
          child: MaterialButton(minWidth: 200.0,
          height: 42.0,
          onPressed: () {},
          color: Colors.lightBlueAccent,
          child: Text('log In',style:TextStyle(color:Colors.white))        
          ),
          //onTap: () {
            //Navigator.of(context).push(
              //  MaterialPageRoute(builder: (BuildContext context) => page_acceuil()));
          //},
        ));
        

         final forgotLabel = FlatButton(child:Text('Forgot password?',style:TextStyle(color:Colors.black54)), onPressed: () {}, 
         );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0,right: 24.0),
          children: <Widget>[
            email,
            SizedBox(height: 48.0),
            password,
            SizedBox(height: 48.0),
            loginButton,
            forgotLabel
          ],

        ),
      ),
    );
  }
}

