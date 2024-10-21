import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traveling_projext/booking.dart';

class detail_page extends StatelessWidget {
  const detail_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        const    SizedBox(height: 40,),
            Row(
              children: [
        const    SizedBox(width: 10,),
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:const Image(image: AssetImage('assets/img_7.jpg'),width: 140,)
                ),
              const  Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Most luxurious & \nPeaceful natural place',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),),

                    SizedBox(height: 5,),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star_border,color: Colors.yellow,),
                          Icon(Icons.star_border,color: Colors.yellow,),
                        ],),
                    )
                  ],)
              ],),
            
            const  SizedBox(height: 20,),
            
         const   Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Text('About Place',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
         const   Padding(
              padding: EdgeInsets.all(8.0),
              child:Text(
                  "The Bahá'í leap year occurs when f"
                      "ive extra days, instead of four,"
                      "are added between the last two months"
                      " of the calendar. This usually happens every four years."
                ,style: TextStyle(fontSize: 18),)
            ),
            
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: ClipRRect(
             borderRadius: BorderRadius.circular(20),
             child: const Image(image: AssetImage('assets/img_14.jpg'))),
       ),


       const  Padding(
           padding:  EdgeInsets.all(8.0),
           child: Text('Perday Packages.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
         ),
       const  SizedBox(height: 10,),
            
         Center(
           child: InkWell(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>booking()));
             },
             child: Container(
               width: 340,
               height: 60,
               decoration: BoxDecoration(
                 color: Colors.blue,
                 borderRadius: BorderRadius.circular(10)
               ),
               child: const Row(
                 children: [
                   SizedBox(width: 10,),
                 Text('800.00',
                   style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                 SizedBox(width: 150,),
                 Text('Booking',
                   style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                   Icon(Icons.arrow_forward,color: Colors.white,)
                 ],
               ),
             ),
           ),
         )
          ],
        ),
      ),
    );
  }
}
