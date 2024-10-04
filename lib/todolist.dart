import 'package:flutter/material.dart';

class TodolistExample extends StatefulWidget {
  const TodolistExample({super.key});

  @override
  State<TodolistExample> createState()=> _TodolistExampleState();
}

class _TodolistExampleState extends State<TodolistExample>{
  List<String> toDoItems=[
    "But groceries",
    "Walk the dog",
    "Do what i say",
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do List"),
      ),
      body: ListView.builder(
        itemCount: toDoItems.length,itemBuilder: (context,index){
        return Dismissible(key: Key(toDoItems[index]),
         direction: DismissDirection.endToStart,
         onDismissed: (direction){
          setState(() {
            toDoItems.removeAt(index);
          });
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Item delected'),
          ),
          );
         },
         background: Container(
          color: Colors.red,
          alignment: Alignment.centerRight,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Icon(Icons.delete,color: Colors.white,),

         ),
         child: ListTile(title: Text(toDoItems[index]),
         ),);
      }),
    );
  }
}