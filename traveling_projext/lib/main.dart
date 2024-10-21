import 'package:flutter/material.dart';
import 'package:traveling_projext/facebook_login.dart';
import 'package:traveling_projext/google_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: login_page(),
    );
  }
}




class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80,),
             Center(
                 child:
                 Image(
                   image:AssetImage('assets/img_1.jpg')
                   ,width:250,height: 250,)),

                 InkWell(
                   onTap: (){},
                   child: Container(
                     width: 150,
                     height: 45,
                     decoration: BoxDecoration(
                       color: Colors.blueAccent,
                       borderRadius: BorderRadius.circular(30)
                     ),
                     child: Center(child: Text('Login',style: TextStyle(color: Colors.white),)),
                   ),
                 ),


          SizedBox(height: 50,),



          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>facebook_login()));
            
          },
          child: Container(
            width: 300,
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xff3D83E7FF),
              borderRadius: BorderRadius.circular(50),
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/img_2.png'),width: 30,height: 30,),
                Text(
                  'Facebook login'
                  ,style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 17,),)

              ],
            )
          ),
          ),
          SizedBox(height: 20,),


          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>google_login()));

          },
            child: Container(
              width: 300,
              height: 70,
              decoration: BoxDecoration(
                color: Color(0xff3D83E7FF),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/img_3.png'),width: 40,height: 35,),
                  Text(
                    'Google login'
                    ,style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 17,),)

                ],
              )
            ),
          )


        ],
      ),
    );
  }
}

