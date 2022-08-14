

 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String input = "";
  late int value1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Calculator"),),
        body: Column(
          children: [

            Expanded(
              flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                          onTap: (){
                            setState(() {

                            });
                          },
                          child: Text(input,style: TextStyle(color: Colors.black,fontSize: 40),)),
                    ),
                  ],
                )),
            Expanded(
              flex: 3,
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("data",style: TextStyle(color: Colors.black,fontSize: 40),),
              )
            ],)),

            Expanded(
              flex: 4,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          input = "1";
                          value1 = int.parse(input);
                          print(value1);
                        },
                        child: Container(
                          color: Colors.orange[400],
                          child: CircleAvatar(
                              backgroundColor: Colors.orange[700],
                              radius: 25,
                              child: Text("1",style: TextStyle(fontSize: 36),)),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.orange[600],
                        child: Text("1",style: TextStyle(fontSize: 36),),
                        alignment: Alignment.center,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.orange[400],
                        child: Text("1",style: TextStyle(fontSize: 36),),
                        alignment: Alignment.center,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.orange[600],
                        child: Text("1",style: TextStyle(fontSize: 36),),
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
