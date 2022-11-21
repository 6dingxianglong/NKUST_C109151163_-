import 'package:flutter/material.dart';
import 'package:nkust_C109151163_DingXiangLong_midterm/data.dart';
import 'package:fluttertoast/fluttertoast.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {

  skillList skill=new skillList();
  List<dynamic> selected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Expertise',
          style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: const Color(0xff12CBC4),

      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/bg1.jpeg"),
              fit: BoxFit.cover,
            )
        ),
        child: Column(
              children: [
                const SizedBox(height: 20,),
                 Container(
                   margin: EdgeInsets.only(left: 80,right: 80),
                   height: 40,
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                       color: Colors.black54,
                     borderRadius: BorderRadius.circular(20),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.9),
                         offset: Offset(0.0,6.0),
                         blurRadius: 0,
                         spreadRadius: 0,
                       )
                     ]

                   ),
                   child:  Text("涉獵的技術清單",
                     style: TextStyle(fontSize: 20,
                       color: Colors.white
                  ),
                  ),
                 ),
                const SizedBox(height: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Wrap(
                        spacing: 8.0, // 主轴(水平)方向间距
                        runSpacing: 4.0, // 纵轴（垂直）方向间距
                        children: <Widget>[
                          for (int i = 0; i < skill.getprogramLen(); i++)
                            InputChip(
                                selected: skill.getprogram()[i][1],
                                label: Text(skill.getprogram()[i][0]),
                                labelStyle: TextStyle(color: Colors.white),
                                avatar: Icon(
                                  Icons.add,
                                ),
                                backgroundColor: Colors.black54,
                                selectedColor: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    skill.getprogram()[i][1] = !skill.getprogram()[i][1];
                                    print(
                                      skill.getprogram()[i][0] +' is ' + (skill.getprogram()[i][1]).toString(),
                                    );
                                    if(skill.getprogram()[i][1]) {
                                      Fluttertoast.showToast(
                                        msg: "個人見解：\n${skill.getprogram()[i][2]}",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.BOTTOM,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.grey,
                                        textColor: Colors.white,
                                        fontSize: 16.0
                                    );}
                                  });
                                }),
                        ]),
                  ],
                ),
                const SizedBox(height: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Wrap(
                        spacing: 8.0, // 主轴(水平)方向间距
                        runSpacing: 4.0, // 纵轴（垂直）方向间距
                        children: <Widget>[
                          for (int i = 0; i < skill.getskillLen(); i++)
                            InputChip(
                                selected: skill.getskill()[i][1],
                                label: Text(skill.getskill()[i][0]),
                                labelStyle: TextStyle(color: Colors.white),
                                avatar: Icon(
                                  Icons.add,
                                ),
                                backgroundColor: Colors.black54,
                                selectedColor: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    skill.getskill()[i][1] = !skill.getskill()[i][1];
                                    print(
                                      skill.getskill()[i][0] + ' is ' + (skill.getskill()[i][1]).toString(),
                                    );
                                    if(skill.getskill()[i][1]) {
                                      Fluttertoast.showToast(
                                          msg: "個人見解：\n${skill.getskill()[i][2]}",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.grey,
                                          textColor: Colors.white,
                                          fontSize: 16.0
                                      );}
                                  });
                                }),
                        ]),
                    const SizedBox(height: 5,),
                  ],
                ),
              ],
            ),
      )
    );
  }
}
