import 'dart:async';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class turtle extends StatefulWidget {
  const turtle({Key? key}) : super(key: key);


  @override
  State<turtle> createState() => _turtleState();
}
int status=0;

class _turtleState extends State<turtle> {
  int count=0;
  int love=0;
  var period = const Duration(seconds: 1);

  _turtleFeed(){
    count+=1;
    print(count);
    setState(() {});
  }
  _turtlePlay(){
    if(love<10){
      love+=1;
      setState(() {});
    }
  }
  initState(){
    print("initState()");
    Timer.periodic(Duration(seconds:5), (timer){
      if(status==1) {
        timer.cancel();}
      if(love>0){
        love-=1;
        setState(() {});
      }
    });
  }
  deactivate(){
    print("deactivate()");
    status=1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("寵物"),
        backgroundColor: Colors.green,
        leading: IconButton(
            onPressed:(){
              if(status==0){
                showAlertDialog(context);}
              else{
                Navigator.of(context).pop();}},
            icon: Icon(Icons.arrow_back_ios)
        ),
        actions: <Widget>[
          Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.help_outline,size: 35,),
                onPressed: () =>showHelper(context),
              );
            },
          )
        ],
      ),
        body: Container(
          color: Color(0xfffad390),
          child:Column(
            children: [
              Container(
                height: 450,
                child: Column(
                  children: [
                    if(count<5 &&status==0)
                      Container(
                        margin: EdgeInsets.only(top: 165),
                        child: Center(
                          child:
                              Column(
                                children: [
                                  Text("龜龜",
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  Image.asset('asset/turtle/turtle1.png'),
                                  Text("飽足感：$count /5"),
                                  Text("幸福感：$love /10")
                                ],
                              )
                        ),
                      ),
                    if(5<=count && count<10&&status==0)
                      Container(
                        margin: EdgeInsets.only(top: 160),
                        child: Center(
                          child:
                          Column(
                            children: [
                              Text("龜龜", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              Image.asset('asset/turtle/turtle2.png'),
                              Text("飽足感：${count-5} /5"),
                              Text("幸福感：$love /10")
                            ],
                          )
                        ),
                      ),
                    if(10<=count &&count<20&&status==0)
                      Container(
                        margin: EdgeInsets.only(top: 150),
                        child: Center(
                          child:
                          Column(
                            children: [
                              Text("龜龜", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              Image.asset('asset/turtle/turtle3.png'),
                              Text("飽足感：${count-10} /10"),
                              Text("幸福感：$love /10")
                            ],
                          )
                        ),
                      ),
                    if(20<=count && count<35&&status==0)
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        child: Center(
                          child:
                          Column(
                            children: [
                              Text("龜龜", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              Image.asset('asset/turtle/turtle4.png'),
                              Text("飽足感：${count-20} /15"),
                              Text("幸福感：$love /10")
                            ],
                          )
                        ),
                      ),
                    if(35<=count&&status==0)
                      Container(
                        margin: EdgeInsets.only(top: 60),
                        child: Center(
                          child:
                          Column(
                            children: [
                              Text("龜龜", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              Image.asset('asset/turtle/turtle5.png'),
                              Text("幸福感：$love /10"),
                              Text("")
                            ],
                          )
                        ),
                      ),

                    if(status==1)
                      Container(
                        margin: EdgeInsets.only(bottom: 20),

                        child: Center(
                            child:
                            Column(
                              children: [
                                Image.asset('asset/rip.png'),
                                Text("2019~2020")
                              ],
                            )),
                      ),
                  ],
                ),
              ),
              
              if(status!=1)
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 80,right: 20),
                    child:ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff808069)),
                        onPressed: _turtleFeed,
                        child: Text(
                            "餵食"
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 80,right: 20),
                    child:ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff808069)),
                        onPressed: _turtlePlay,
                        child: Text(
                            "陪伴"
                        )),
                  ),],
              )
            ],
          ),
        ),
    );
  }
}
showHelper(BuildContext context) {
  // Init
  AlertDialog dialog = AlertDialog(
    title: Text("餵食達一定量龜龜會變大隻\n隨時間流逝龜龜性福值會下降\n離開此頁面龜龜會死亡\n\n(致敬第一隻養的烏龜)"),
    actions: [
      ElevatedButton(
          child: Text("OK"),
          onPressed: () =>Navigator.pop(context),
      ),
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialog;
      }
  );
}
// Show AlertDialog
showAlertDialog(BuildContext context) {
  // Init
  AlertDialog dialog = AlertDialog(
    title: Text("如果退出\n龜龜將死亡"),
    actions: [
      ElevatedButton(
          child: Text("OK"),
          onPressed: () =>Navigator.of(context)..pop()..pop()
      ),
      ElevatedButton(
          child: Text("Cancel"),
          onPressed: () {
            Navigator.pop(context);
          }
      ),
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialog;
      }
  );
}
  // Show the dialog

