import 'package:flutter/material.dart';
import './result.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formKey= GlobalKey<FormState>();
 TextEditingController _name= new TextEditingController();
 TextEditingController _email= new TextEditingController();
 TextEditingController _password= new TextEditingController();

 Future<void> signup() async{
  try{
     UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _email.text,
      password: _password.text );
  }catch(e){print(e);}
  Navigator.push(context,MaterialPageRoute(builder: ((context) => Result())));
 }
 
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: size.height*0.03,left: size.height*0.04,right: size.height*0.04,),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text('Sign Up',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
              ),
              SizedBox(height: size.height*0.03,),
              TextFormField(
                
                decoration: InputDecoration(
                  
                  labelText: 'Name',
                  hintText: 'Enter your name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color:  Colors.blue,
                      width: 3,
                     // style: BorderStyle.solid
                      )
                  )
                ),
                controller: _name,
                validator: (value) {
                  if(value==null||value.isEmpty){
                    return 'enter your name';
                  }
                },
              ),
              SizedBox(height: size.height*0.02,),
              TextFormField(
                
                decoration: InputDecoration(
                  
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
                controller: _email,
                validator: (value) {
                  if(value==null||value.isEmpty){
                    return 'enter your email';
                  }
                },
              ),
              SizedBox(height: size.height*0.02,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
                controller: _password,
                validator: (value) {
                  if(value==null||value.isEmpty){
                    return 'enter your email';
                  }
                },
              ),
               SizedBox(height: size.height*0.03,),
              InkWell(
                onTap: () {
                   if(_formKey.currentState!.validate()){
                     signup();
                  }
                },
                child: Container(
                    width:size.width*0.9,
                    height: size.height*0.09,
                  decoration: BoxDecoration(
                        color:  Color.fromARGB(255, 4, 94, 251),
                        borderRadius: BorderRadius.all(Radius.circular(10),
                        )
                  ),
                  child:Center(child: Text('Sign Up',
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
            
              ),
                  )) ,
                ),
              )
            ],
          )),
      )
    );
  }
}