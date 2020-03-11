import 'package:flutter/material.dart';
import 'package:focus/Src/GoalPage.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String _name;
  String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  
  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: ' Your username',
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200]),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  // User password
  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: ' Your password',
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200]),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  // Login button
  Widget _submitButton() {
    return GestureDetector(
      onTap: () {
        // if (!_formKey.currentState.validate()) {
        //   return;
        // }

        // _formKey.currentState.save();
        // print(_name);
        // print(_password);

         Navigator.push(context, MaterialPageRoute(builder: (context) =>GoalPage() ,));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                // color: Colors.orange.shade200,
                color: Colors.deepOrange[900].withOpacity(0.6),
                offset: Offset(6, 7),
                blurRadius: 12.0,
                // spreadRadius: 2
              )
            ],
            gradient: LinearGradient(
                // Color(0xFFFB415B),
                //  Color(0xFFEE5623),
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xfff7892b), Color(0xFFEE5623)])),
        child: Text(
          'Sign in',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
  
    
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 20),
          child: Column(
            children: <Widget>[
              Image.asset('../Assets/login.png'),
              _buildName(),
              _buildPassword(),
              SizedBox(height: 30),
              _submitButton(),
              SizedBox(height:10),
              Text("Forgot password?")
            ],
          ),
        ),
      ),
    );
  }
}
