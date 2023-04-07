import 'package:flutter/material.dart';
import './loginPage.dart';
import './signupPage.dart';
import 'package:firebase_core/firebase_core.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
 

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
        width: size.height,
        height: size.height,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 4, 94, 251) ),
          child: Column(
            children: [
              SizedBox(height: size.height*0.2,),
              Text('MAFIA',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: size.height*0.1,),
              Container(
                 width: size.height,
                 height: size.height*0.6,
                 decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20)  )),
                        child: Column(
                          children: [
                            SizedBox(height: size.height*0.075,),
                            Text('Welcome',
                            style: TextStyle(
                            
                             fontSize: 20,
                            fontWeight: FontWeight.bold ),
                            ),
                            SizedBox(height: size.height*0.02,),
                            Text('Mafia Score System',
                            style: TextStyle(
                            
                             fontSize: 18,
                           
                            ),
                            ),
                            SizedBox(height: size.height*0.03,),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                              },
                              child: Container(
                                  width:size.width*0.9,
                                  height: size.height*0.08,
                                decoration: BoxDecoration(
                                      color:  Color.fromARGB(255, 4, 94, 251),
                                      borderRadius: BorderRadius.all(Radius.circular(15),
                                      )
                                 ),
                                child:Center(child: Text('Sign Up',
                                     style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                           
                            ),
                                )) ,
                              ),
                            ),
                            SizedBox(height: size.height*0.015 ,),
                            InkWell(
                              onTap: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                              },
                              child: Container(
                                  width:size.width*0.9,
                                  height: size.height*0.08,
                                decoration: BoxDecoration(
                                      color:  Color.fromARGB(255, 4, 94, 251),
                                      borderRadius: BorderRadius.all(Radius.circular(15),
                                      )
                                 ),
                                child:Center(child: Text('Sign In',
                                     style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                           
                            ),
                                )) ,
                              ),
                            )
                            
                          ],
                        )  ),

              
            ],
          ),
        ),
      )
    );
  }
  
  }

  

