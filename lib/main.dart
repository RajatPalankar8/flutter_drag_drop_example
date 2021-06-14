import 'package:drag_drop_example/DropZoneWidget.dart';
import 'package:drag_drop_example/DroppedFileWidget.dart';
import 'package:drag_drop_example/model/file_DataModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  File_Data_Model? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("drag drop flutter Web"),
      ),
      body: SingleChildScrollView(
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Column(
              children: [

                Container(
                  height: 300,
                  child: DropZoneWidget(
                    onDroppedFile: (file) => setState(()=> this.file = file) ,
                  ),
                ),
                SizedBox(height: 20,),
                DroppedFileWidget(file:file ),

              ],
            )),
      ),
    );
  }
}



