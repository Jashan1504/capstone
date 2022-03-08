import 'package:flutter/material.dart';
import 'package:notes_mainpage_navigation/units.dart';
void main() {

  runApp(Notes());
}

class Notes extends StatelessWidget {

  //const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Select Course ',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  //const MyHomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          'Select Course'
        ),
      ),
      body:_buildListView(context) ,
    );
  }
  ListView _buildListView(BuildContext context){
    final List<String> Entries = <String>['CSE101','CSE202','CSE205','CSE211','CSE224','CSE304','CSE305','CSE306','CSE310','CSE316','CSE320','CSE322'];
    return ListView.builder(
      itemCount: Entries.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title:  Text(' ${Entries[index]}'),
            trailing: Icon(Icons.arrow_right_sharp),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Units(index)));

            },

          );
        },
    );
  }
}

