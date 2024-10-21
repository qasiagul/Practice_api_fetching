import 'dart:convert';
// thiis is how when your show youre data without model
import 'package:flutter/material.dart';
  import 'package:http/http.dart' as http;
   class ExampleFour extends StatefulWidget {
     const ExampleFour({super.key});
   
     @override
     State<ExampleFour> createState() => _ExampleFourState();
   }
   
   class _ExampleFourState extends State<ExampleFour> {

     var data;
     Future<void> getUserApi() async{
       final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
       if(response.statusCode == 200){
         data = jsonDecode(response.body.toString());
       }else{

       }
     }


     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           centerTitle: true,
           title: Text('Api Course'),
         ),
         body: Column(
           children: [
             Expanded(
                 child: FutureBuilder(
                   future: getUserApi(),
                  builder: (context, snapshot){
                     if(snapshot.connectionState == ConnectionState.waiting){
                       return Text('Loading.....');
                     }else{
                       return ListView.builder(
                         itemCount:data.length,
                           itemBuilder: (context, index){
                             return Card(
                               child: Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Column(
                                   children: [
                                     ReasubleRow(title: 'name', value: data[index]['name'].toString(),),
                                     SizedBox(height: 10,),
                                     ReasubleRow(title: 'username', value: data[index]['username'].toString(),),
                                     SizedBox(height: 10,),
                                     ReasubleRow(title: 'email', value: data[index]['email'].toString(),),
                                     SizedBox(height: 10,),
                                     ReasubleRow(title: 'address', value: data[index]['address']['street'].toString(),),
                                     SizedBox(height: 10,),
                                     ReasubleRow(title: 'Geo', value: data[index]['address']['geo']['lat'].toString(),),
                                     SizedBox(height: 10,),
                                     ReasubleRow(title: 'Geo', value: data[index]['address']['geo']['lng'].toString(),),

                                   ],
                                 ),
                               ),
                             );
                           });
                     }
                  },
                 ),
             )
           ],
         ),
       );
     }
   }
class ReasubleRow extends StatelessWidget {

  String title, value;

  ReasubleRow({required this.title, required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(value),
      ],
    );
  }
}
