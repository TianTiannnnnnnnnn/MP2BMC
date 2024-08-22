import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Hello BMC Flutter",
      home: Scaffold(
       appBar: AppBar(
         title: Text("BINI"),
    backgroundColor: Colors.deepPurple,),
    body: Builder (builder:(context) => Center (
      child: Column(children: [
        Text(
        'Bini Mika',
        style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.blue[900]),
      ),
      Text (
        'Buhay ay hindi karera',
            style: TextStyle(fontSize: 20, color:
      Colors.deepPurpleAccent),
      ),
        Image.network('https://th.bing.com/th/id/OIP.VubbI_ARuGl1adP_fyGylgHaHY?rs=1&pid=ImgDetMain',
        height: 350,
        ),
        ElevatedButton(
          child: Text('Contact Us'),
          onPressed: () => contactUs(context),
        )
  ]
      )))));
  }
}//EndLine

void contactUs(BuildContext context){
  showDialog(context: context,
      builder: (BuildContext) {
    return AlertDialog(
      title: Text('Contact Us'),
      content: Text('mail us at grc@gmail.com'),
        actions: <Widget>[
          TextButton(
            child: Text('Close'),
            onPressed: () => Navigator.of(context).pop(),
          )//textButton
        ],//actions
    );//return
  }//Builder
  );//showdialog
}//void contactUs