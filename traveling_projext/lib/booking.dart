import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class booking extends StatelessWidget {
  const booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage('assets/img_15.png')),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Select City',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search..',
                  prefixIcon: Icon(Icons.search,color: Colors.black,),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    )

                ),
              ),
            ),

            SizedBox(height: 20,),


            Row(
              children: [

                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text('Check in',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 155,
                        height: 100,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '20 may 20 fab',
                            prefixIcon: Icon(Icons.date_range),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)
                            ),

                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),



                SizedBox(width: 15,),





                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text('Check out',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 155,
                        height: 100,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: '20 may 20 fab',
                              prefixIcon: Icon(Icons.date_range),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                              ),

                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),










            Row(
              children: [

                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text('Guests',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 155,
                        height: 100,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: '00',
                              prefixIcon: Icon(Icons.add),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                              ),

                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),



                SizedBox(width: 15,),





                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text('Rooms',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 155,
                        height: 100,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: '00',
                              prefixIcon: Icon(Icons.add),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                              ),

                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                child: Container(
                  width: 340,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                        'Booked.',
                        style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
              ),
            )
















          ],
        ),
      ),
    );
  }
}
