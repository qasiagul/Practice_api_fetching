import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traveling_projext/service.dart';

class facebook_login extends StatelessWidget {
  const facebook_login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height: 180,),
              Center(
                  child: Text(
                    'Facebook',
                style: TextStyle
                  (fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blueAccent),)),

              SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                 decoration: InputDecoration(
                   hintText: 'Email address or phone number',
                   focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.black)
                   ),
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.black)
                   )
                 ),

                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'password',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)
                      )
                  ),

                ),
              ),
              SizedBox(height: 50,),
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>service()));

              },
                child: Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login'
                          ,style: TextStyle(color: Colors.white,fontSize: 15,),)

                      ],
                    )
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
