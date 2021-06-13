import 'package:flutter/material.dart';
import 'package:tutorial_hindi/drawer.dart';

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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change me";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [
                  Image.asset("assets/images/bg.jpg",fit: BoxFit.cover,),
                  SizedBox(height: 10,),
                  Text(myText,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  TextField(
                    controller: _nameController,
                    keyboardType: TextInputType.name,
                    // obscureText: true,
                    decoration: InputDecoration(
                      hintText: "enter something",
                      labelText: "name",
                      border: OutlineInputBorder()
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        drawer: MyDrawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            myText = _nameController.text;
            setState(() {
              
            });
          },
          child: Icon(Icons.refresh),
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