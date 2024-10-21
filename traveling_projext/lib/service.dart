import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traveling_projext/detail_page.dart';
import 'package:traveling_projext/main.dart';

class service extends StatelessWidget {
  const service({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('GoFast'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:  InkWell(
              onTap: (){},
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),

                  child:const Image(image: AssetImage('assets/img_5.jpg'),width: 30,height: 30,)

              ),
            ),
          ),
        ],

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue
              ),
              child: Column(
                children: [
                  CircleAvatar(

                    child:  ClipRRect(
                        borderRadius: BorderRadius.circular(20),

                        child:const Image(image: AssetImage('assets/img_5.jpg'))

                    ),
                  ),
              const    Text('Welcome'),
              const    Text('Dayem nasir')
                ],
              ),
          ),
          InkWell(
            onTap: (){},
            child: const  ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
          ),
          InkWell(
            onTap: (){},
            child: const  ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>login_page()));
            },
            child: const  ListTile(
                leading: Icon(Icons.logout),
                title: Text('log out',style: TextStyle(color: Colors.red),),
              ),
          ),
          ]
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             const SizedBox(height: 15,),

            const  SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "search hear",
                    prefixIcon: const Icon(Icons.search),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                ),
              ),
            const  SizedBox(height: 20,),

            const  Padding(
                padding:  EdgeInsets.only(left: 20),
                child: Text("Popular Places",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ),
             const  SizedBox(height: 30,),

              Row(
                children: [
                 const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>detail_page()));

                    },
                    child: Container(
                      width: 149,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            spreadRadius: 0,
                            offset: Offset(0,0)
                          ),
                        ]
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: const Image(image: AssetImage('assets/img_7.jpg'),width: 148,)

                          ),
                         const SizedBox(height: 10,),
                        const  Text('Visit in place')
                        ],
                      ),
                      

                    ),
                  ),





                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: 149,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 0,
                                offset: Offset(0,0)
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child:const Image(image: AssetImage('assets/img_9.jpg'),width: 148,)

                          ),
                       const   SizedBox(height: 10,),
                       const   Text('Visit in place')
                        ],
                      ),


                    ),
                  ),



                ],
              ),




          const    SizedBox(height: 30,),



              Row(
                children: [
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: 149,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 0,
                                offset: Offset(0,0)
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(image: AssetImage('assets/img_8.jpg'),width: 148,)

                          ),
                          const SizedBox(height: 10,),
                          const  Text('Visit in place')
                        ],
                      ),


                    ),
                  ),





                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: 149,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 0,
                                offset: Offset(0,0)
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child:const Image(image: AssetImage('assets/img_6.jpg'),width: 148,)

                          ),
                          const   SizedBox(height: 10,),
                          const   Text('Visit in place')
                        ],
                      ),


                    ),
                  ),



                ],
              ),



           const     SizedBox(height: 30,),





              Row(
                children: [
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: 149,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 0,
                                offset: Offset(0,0)
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(image: AssetImage('assets/img_10.jpg'),width: 148,)

                          ),
                          const SizedBox(height: 10,),
                          const  Text('Visit in place')
                        ],
                      ),


                    ),
                  ),





                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: 149,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 0,
                                offset: Offset(0,0)
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child:const Image(image: AssetImage('assets/img_11.jpg'),width: 148,)

                          ),
                          const   SizedBox(height: 10,),
                          const   Text('Visit in place')
                        ],
                      ),


                    ),
                  ),



                ],
              ),

           const   SizedBox(height: 30,),






              Row(
                children: [
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: 149,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 0,
                                offset: Offset(0,0)
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(image: AssetImage('assets/img_12.jpg'),width: 148,)

                          ),
                          const SizedBox(height: 10,),
                          const  Text('Visit in place')
                        ],
                      ),


                    ),
                  ),





                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: 149,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 0,
                                offset: Offset(0,0)
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child:const Image(image: AssetImage('assets/img_13.jpg'),width: 148,)

                          ),
                          const   SizedBox(height: 10,),
                          const   Text('Visit in place')
                        ],
                      ),


                    ),
                  ),



                ],
              ),
           const   SizedBox(height: 30,)









            ],),
        ),
      ),

    );
  }
}
