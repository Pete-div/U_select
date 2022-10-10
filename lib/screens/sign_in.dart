import 'package:flutter/material.dart';
import 'dart:math';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final GlobalKey<FormState> _form = GlobalKey();
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign In'),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(100, 170, 100, 1).withOpacity(0.3),
                      Color.fromRGBO(140, 209, 200, 1).withOpacity(0.5),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0, 1]),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: deviceSize.height,
                width: deviceSize.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 90),
                        transform: Matrix4.rotationZ(-8 * pi/180)
                          ..translate(-20.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 8,
                                color: Colors.pink,
                                offset: Offset(3, 3),
                              ),
                            ]),
                        child: Text(
                          'U-select',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    FormField()
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class FormField extends StatefulWidget {
  @override
  State<FormField> createState() => _FormFieldState();
}

class _FormFieldState extends State<FormField> {
  final GlobalKey<FormState> _form = GlobalKey();
  String _userName ='';
   String _password = '';

  void _submit(){
    if(!_form.currentState!.validate()){
      return;
    }
    _form.currentState!.save();
    setState(() {
      Navigator.of(context).pushReplacementNamed('/splash_screen');
    });

  }
  @override
  Widget build(BuildContext context) {
      final deviceSize =MediaQuery.of(context).size;
    return Form(
      key: _form,
      child: Card(
        margin: EdgeInsets.all(20),
        elevation: 5,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  width: double.infinity,
                  child: Text(
                    'Sign-In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15, top: 6),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter Username'
                  ),
                  validator: (value){
                    if(value!.length <5 ){
                      return 'Please a name with five characters';
                    }
                    
                  },
                  onSaved: (value){
_userName =value as String;
                  },
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15, top: 6),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter Password',
                  ),
                 validator: (value){
                    if(value!.length <5 ){
                      return 'Please a password with five characters';
                    }
                    
                  },
                  onSaved: (value){
_password =value as String;
                  },
                  obscureText: true,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, bottom: 20),
                child: ElevatedButton(
                  onPressed: _submit,
                  child: Text(
                    'Submit',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

