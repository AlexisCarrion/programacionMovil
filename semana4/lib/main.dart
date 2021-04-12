import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [

              SizedBox(height: 50,),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Login Now',style: Theme.of(context).textTheme.headline4,),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Please login to continue using our app'),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 150,),
              Container(
                padding: EdgeInsets.all(1),
                child: Text('Login instantly:'),
              ),

              Container(
                padding: EdgeInsets.all(1),
                child: Row(
                  children: <Widget>[
                    BotonBlanco(texto: 'F',),
                    BotonBlanco(texto: 'G',),
                  ]
                ),
              ),


              SizedBox(height: 10,),
              
              

              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(1),
                child: Text('or login with email/mobile'),
              ),

              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('E-mil ID or Mobile Number'),
                    ),
                    CajaTexto(hint: 'email'),
                    SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Password'),
                    ),
                    CajaTexto(hint: 'password'),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('Remember me',textAlign: TextAlign.left,),
                          ),
                        Expanded(
                          child: Text('Forgot password',textAlign: TextAlign.right,style: TextStyle(color: Colors.blue,),),
                          ),
                      ],
                    ),
                    BotonAzul(texto: 'Login to my account',),
                    Row(
                children: <Widget>[
                Expanded(
                child: Text('Don''t have an account?',textAlign: TextAlign.center,),
                ),
                Expanded(
                child: Text('Register now',textAlign: TextAlign.center,style: TextStyle(color: Colors.blue),),
                ),
                ],
                ),
                  ],
                ),
              ),

              
              
              
              

            ],
          ),
        ),
      ),
    );
  }
}

class BotonBlanco extends StatelessWidget {
  final String texto;
  const BotonBlanco({this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 60,right: 30,top: 20,bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 70,vertical: 10),
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 4
          )
        ],
      ),
      child: Text(this.texto,style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
    );
  }
}

class BotonAzul extends StatelessWidget {
  final String texto;
  const BotonAzul({this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1,right: 1,top: 20,bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 100,vertical: 10),
      decoration: BoxDecoration(
      color: Colors.blue[800],
      borderRadius: BorderRadius.circular(5),
      ),
      child: Text(this.texto,style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),),
    );
  }
}

class CajaTexto extends StatelessWidget {
  final String hint;
  CajaTexto({this.hint});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1,right: 1,top: 20,bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 4
          )
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: this.hint
          ),
        ),
    );
  }
}


