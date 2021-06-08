import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Tutorial", 
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Container(color: Colors.yellow),
        drawer: Drawer(
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
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
          ),
      );
  }
}


//  Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             color: Colors.black,
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   child: Container(
//                     // color: Colors.green,
//                     width: 100,
//                     height: 100,
//                     child: Text('I am a box',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20)),
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                         color: Colors.red,
//                         gradient:
//                             LinearGradient(colors: [Colors.red, Colors.yellow]),
//                         // shape: BoxShape.circle
//                         borderRadius: BorderRadius.circular(20),
//                         boxShadow: [
//                           BoxShadow(
//                               color: Colors.grey,
//                               blurRadius: 10,
//                               offset: Offset(2.0, 5.0))
//                         ]),
//                   ),
//                 ),
//                 Container(
//                   child: Container(
//                     // color: Colors.green,
//                     width: 100,
//                     height: 100,
//                     child: Text('I am a box',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20)),
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                         color: Colors.red,
//                         gradient:
//                             LinearGradient(colors: [Colors.blue, Colors.grey]),
//                         // shape: BoxShape.circle
//                         borderRadius: BorderRadius.circular(20),
//                         boxShadow: [
//                           BoxShadow(
//                               color: Colors.grey,
//                               blurRadius: 10,
//                               offset: Offset(2.0, 5.0))
//                         ]),
//                   ),
//                 ),
//                 Container(
//                   child: Container(
//                     // color: Colors.green,
//                     width: 100,
//                     height: 100,
//                     child: Text('I am a box',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20)),
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                         color: Colors.red,
//                         gradient: LinearGradient(
//                             colors: [Colors.purple, Colors.amberAccent]),
//                         // shape: BoxShape.circle
//                         borderRadius: BorderRadius.circular(20),
//                         boxShadow: [
//                           BoxShadow(
//                               color: Colors.grey,
//                               blurRadius: 10,
//                               offset: Offset(2.0, 5.0))
//                         ]),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));