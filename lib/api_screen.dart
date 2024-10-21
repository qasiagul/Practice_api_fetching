import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Models/PostsModel.dart';
  class Api_Screen extends StatefulWidget {
    const Api_Screen({super.key});
  
    @override
    State<Api_Screen> createState() => _Api_ScreenState();
  }
  
  class _Api_ScreenState extends State<Api_Screen> {

    List<PostsModel> postList = [];

    Future<List<PostsModel>> getPostApi() async{
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      var data = jsonDecode(response.body.toString());
      if(response.statusCode == 200){
        for(Map i in data){
          postList.add(PostsModel.fromJson(i));
        }
        return postList;
      }else{
        return postList;
      }
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Api Tutorials'),
        ),
        body: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                  future: getPostApi(),
                  builder: (context , snapshot){
                    if(!snapshot.hasData){
                      return Text('Loading....');
                    }else{
                      return ListView.builder(
                          itemCount: postList.length,
                          itemBuilder: (context , index){
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Title',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                Text(postList[index].title.toString()),
                                SizedBox(height: 15,),
                                Text('Description',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                Text(postList[index].body.toString()),
                              ],
                            ),
                          ),
                        );
                      });
                    }
                  }
                  ),
            )
          ],
        ),
      );
    }
  }
