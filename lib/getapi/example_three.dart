import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '/Models/UserModel.dart';
class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key});

  @override
  State<ExampleThree> createState() => ExampleThreeState();
}

class ExampleThreeState extends State<ExampleThree> {

  List<UserModel> userList = [];

  Future<List<UserModel>> getUser() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      for(Map i in data){
        userList.add(UserModel.fromJson(i));
      }
      return userList;
    }else{
      return userList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aroona'),
      ),
      body: Column(
        children: [
          FutureBuilder(
              future: getUser(),
              builder: (context,  AsyncSnapshot<List<UserModel>> snapshot){
                
                if(!snapshot.hasData){
                  return CircularProgressIndicator();
                }else{
                  return Expanded(
                    child: ListView.builder(
                        itemCount: userList.length,
                        itemBuilder: (context, index){
                          return Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                 ReasubleRow(title: 'Name', value: snapshot.data![index].name.toString()),
                                 ReasubleRow(title: 'Username', value: snapshot.data![index].username.toString()),
                                 ReasubleRow(title: 'email', value: snapshot.data![index].email.toString()),
                                 ReasubleRow(title: 'Id', value: snapshot.data![index].id.toString()),
                                 ReasubleRow(title: 'Address', value: snapshot.data![index].address!.geo!.lat.toString()),
                                ],
                              ),
                            ),
                          );
                        }),
                  );
                }
              })
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
