import 'package:flutter/material.dart';
import 'package:flutter_app/sql/sql.dart';
import"package:get/get.dart";
import 'note screen.dart';
class addnote extends StatefulWidget {
  const addnote({Key? key}) : super(key: key);

  @override
  _addnoteState createState() => _addnoteState();
}

class _addnoteState extends State<addnote> {
  SqlDb sqlDb=SqlDb();
  GlobalKey<FormState>formstate=GlobalKey();
  TextEditingController note =TextEditingController();
  TextEditingController color =TextEditingController();
  TextEditingController title  =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("add note"),),
      body: Container(child: ListView(children: [
        Form(
            key: formstate,
            child: Column(children: [
             TextFormField(
               controller: note,
             ),
              TextFormField(
                controller: title,
              ),
              TextFormField(
                controller: color,
              ),
              SizedBox(height: 30,),
              MaterialButton(onPressed: ()async{
                int response = await sqlDb.insertData('''
                INSERT INTO notes ('note','title','color')
                VALUES("${note.text}","${note.text}","${note.text}",)
                
                ''');
                if(response>0){
                  Get.to(noteScreen);
                }
                print("=======================");
              },child: Text("add Note"),)
        ],))
      ],),),
    );
  }
}

