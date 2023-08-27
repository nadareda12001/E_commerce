import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/sql/sql.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/circular_reveal_clipper.dart';

import 'addnote.dart';


class noteScreen extends StatefulWidget {
  const noteScreen({Key? key}) : super(key: key);

  @override
  _noteScreenState createState() => _noteScreenState();
}

class _noteScreenState extends State<noteScreen> {
  SqlDb sqlDb =SqlDb();
  Future<List<Map>> readData() async{
    List<Map>response=await sqlDb.readData("SELECT * FROM notes");
    return response;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(addnote());
      },child: const Icon(Icons.add),




      ),
      body: Container(
        child: ListView(
          children: [
      //       MaterialButton(onPressed: ()async{
      //         await sqlDb.mydeleteDatabase();
      // },child: Text("delete database"),
      // ),
            FutureBuilder(
              future: readData(),
                builder:(context,AsyncSnapshot<List<Map>>  snapshot) {
                  if(snapshot.hasData){
                   return ListView.builder(
                     physics: NeverScrollableScrollPhysics(),
                     shrinkWrap: true,
                     itemCount: snapshot.data!.length,

                     itemBuilder: (context, index) {
                     return Card(child: ListTile(
                       title: Text("${snapshot.data![index]['title']}"),
                       subtitle:Text("${snapshot.data![index]['note']}"),
                       trailing: Text("${snapshot.data![index]['color']}"),
                     ),);
                   },
                   );
                  }else{
                      return Center(child: CircularProgressIndicator(),);
                  };
                }

            )
          ],
        ),
      ),
    );;
  }
}
