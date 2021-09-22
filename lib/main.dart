import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homepage(),
    );
  }
}
class homepage extends StatefulWidget {
  const homepage({ Key? key }) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Icon cuicon= Icon(Icons.search);
  Widget cotext = Text("Files");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cotext,
        leading: IconButton(onPressed: (){
         
        },
        icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(onPressed: (){
             setState(() {
            if(this.cuicon.icon == Icons.search){
              this.cuicon= Icon(Icons.cancel_sharp);
              this.cotext= TextField(
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(contentPadding: EdgeInsets.all(10),
                  //border: InputBorder.none,
                  hintText: "Search Hear",
                ),
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white
                ),
              );
            } else{
                this.cuicon= Icon(Icons.search);
                this. cotext = Text("Files");
            }
          });
          },
          icon: cuicon,
          ),
          IconButton(onPressed: (){},
          icon: Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }
}
