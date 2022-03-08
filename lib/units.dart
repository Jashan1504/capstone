import 'package:flutter/material.dart';
import 'package:notes_mainpage_navigation/pdf_api.dart';
class Units extends StatelessWidget {
  final int index;
  final List<String> entries = <String>['Syllabus','Unit 1', 'Unit 2', 'Unit 3','Unit 4','Unit 5','Unit 6'];

  Units(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Unit'),
      ),
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title:  Text(' ${entries[index]}'),
          trailing: Icon(Icons.arrow_right_sharp),
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PDF_api()));

          },
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );

  }
}
