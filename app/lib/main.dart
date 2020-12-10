import 'package:app/listData.dart';
import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primarySwatch: Colors.teal,
            ),
            home: MyHomePage(),//title: Text('Favourites')),

    );
  }
}

 class MyHomePage extends StatelessWidget {
   //MyHomePage({Key key, this.title}) : super(key: key);

   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Favourites'),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              showSearch(context: context, delegate: restSearch());
            }, icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
          children: <Widget> [
         FlatButton(
            onPressed: () {
              Navigator.of(context)
                  .push(
                  MaterialPageRoute(
                    builder: (context) => Restaurant1()
                  )
              );
            },
           child: Text('Restaurant 1', style: TextStyle(fontSize: 25)),
          ),
            Divider(),
            FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(
                        builder: (context) => Restaurant2()
                    )
                );
              },
              child: Text('Restaurant 2', style: TextStyle(fontSize: 25)),
            ),
            Divider(),
            FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(
                        builder: (context) => Restaurant3()
                    )
                );
              },
              child: Text('Restaurant 3', style: TextStyle(fontSize: 25)),
            ),
            Divider(),
            FlatButton(
              onPressed: () {Navigator.of(context)
                  .push(
                  MaterialPageRoute(
                      builder: (context) => Restaurant4()
                  )
              );},
              child: Text('Restaurant 4', style: TextStyle(fontSize: 25)),
            ),
            Divider(),
          ],
      ),

    );
  }


 }
//This class is responsible for searching restaurant items
 class restSearch extends SearchDelegate<Restaurant> {
  @override
  List<Widget> buildActions(BuildContext context) {
   return [IconButton(icon: Icon(Icons.clear), onPressed: (){
     query ="";
   },)];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),);
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Text(query,style: TextStyle(fontSize: 20),));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final myList = query.isEmpty? loadRestaurants()
    : loadRestaurants().where((p) => p.name.startsWith(query)).toList();
    return myList.isEmpty? Text('No Results Found') : ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context,index){
          final Restaurant listItem = myList[index];
          return ListTile(
          onTap: (){
            showResults(context);
          },
          title:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(listItem.name,style: TextStyle(fontSize: 20),),
              Divider()
            ]
          )); });
  }
  
 }

 //This page is dedicated to the first restaurant listed in the home page
 class Restaurant1 extends StatelessWidget{
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('Restaurant 1')),
       body:
           Column (children: <Widget>[
             Text('Description',style: TextStyle(fontSize: 30, height: 1.5),),
             Text('Description goes here',style: TextStyle(
                 fontSize: 20, height: 2.0),),
             Divider(),
             Text('Menu',style: TextStyle(fontSize: 30),),
             Text('Appetizers',style: TextStyle(
                 fontSize: 25, height: 2.0,),),
             Text('Main Course',style: TextStyle(
               fontSize: 25, height: 2.0,),),
             Text('Desserts',style: TextStyle(
               fontSize: 25, height: 2.0,),),
           ])
     );
   }
 }

//This page is dedicated to the second restaurant listed in the home page
class Restaurant2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Restaurant 2')),
        body:
        Column (children: <Widget>[
          Text('Description',style: TextStyle(fontSize: 30, height: 1.5),),
          Text('Description goes here',style: TextStyle(
              fontSize: 20, height: 2.0),),
          Divider(),
          Text('Menu',style: TextStyle(fontSize: 30),),
          Text('Appetizers',style: TextStyle(
            fontSize: 25, height: 2.0,),),
          Text('Main Course',style: TextStyle(
            fontSize: 25, height: 2.0,),),
          Text('Desserts',style: TextStyle(
            fontSize: 25, height: 2.0,),),
        ])
    );
  }
}

//This page is dedicated to the third restaurant listed in the home page
class Restaurant3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Restaurant 3')),
        body:
        Column (children: <Widget>[
          Text('Description',style: TextStyle(fontSize: 30, height: 1.5),),
          Text('Description goes here',style: TextStyle(
              fontSize: 20, height: 2.0),),
          Divider(),
          Text('Menu',style: TextStyle(fontSize: 30),),
          Text('Appetizers',style: TextStyle(
            fontSize: 25, height: 2.0,),),
          Text('Main Course',style: TextStyle(
            fontSize: 25, height: 2.0,),),
          Text('Desserts',style: TextStyle(
            fontSize: 25, height: 2.0,),),
        ])
    );
  }
}

//This page is dedicated to the fourth restaurant listed in the home page
class Restaurant4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Restaurant 4')),
        body:
        Column (children: <Widget>[
          Text('Description',style: TextStyle(fontSize: 30, height: 1.5),),
          Text('Description goes here',style: TextStyle(
              fontSize: 20, height: 2.0),),
          Divider(),
          Text('Menu',style: TextStyle(fontSize: 30),),
          Text('Appetizers',style: TextStyle(
            fontSize: 25, height: 2.0,),),
          Text('Main Course',style: TextStyle(
            fontSize: 25, height: 2.0,),),
          Text('Desserts',style: TextStyle(
            fontSize: 25, height: 2.0,),),
        ])
    );
  }
}