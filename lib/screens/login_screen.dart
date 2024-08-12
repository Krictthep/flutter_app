import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailFormField(),
            passwordFormField(),
            Container(
              margin: EdgeInsets.only(bottom: 10),
            ),
            submitButton(),
          ],
        ),
      ),      
    );    
  }

  Widget emailFormField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "อีเมล",
        hintText: "กรอกอีเมล",
        icon: Icon(Icons.email),
      ),
      validator: (String? value){
        if(!validateEmail(value)){
          return 'อีเมลไม่ถูกต้อง';
        }
        else{
          return null;
        }       
      },
      onSaved: (String? value){
        email = value.toString();
      },
    );
  }

  Widget passwordFormField(){
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "รหัสผ่าน",
        hintText: "กรอกรหัสผ่าน",
        icon: Icon(Icons.lock),
      ),
      validator: (String? value){
        if(value != null && value.length < 8){
          return 'กรอกรหัสผ่านอย่างน้อย 8 ตัวอักษร';
        }
        else{
          return null;
        }       
      },
      onSaved: (String? value){
        password = value.toString();
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        if(formKey.currentState?.validate() == true){
          formKey.currentState?.save();
        }        
      }, 
      child: Text('เข้าสู่ระบบ'),
      style: ElevatedButton.styleFrom(
        iconColor: Colors.blue,
      ),    
    );
  }



  bool validateEmail(String? value){
    String pattern = 
    r'^(?=.{1,256})(?=.{1,64}@.{1,255}$)[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$';
    RegExp regex = new RegExp(pattern);    
    return (!regex.hasMatch(value.toString())) ? false : true;
  }

}

