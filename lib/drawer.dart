import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // DrawerHeader(child: Text('My Name Is KaranDuggal',style: TextStyle(color: Colors.white),),
              // decoration: BoxDecoration(color: Colors.red),
              // ),
              UserAccountsDrawerHeader(
                accountName: Text("KaranDuggal khan"), 
                accountEmail: Text('Duggalkaran400@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
                  ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('User'),
                subtitle: Text('persional'),
                trailing: Icon(Icons.edit),)
            ],
          ),
        );
  }
}