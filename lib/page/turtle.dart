import 'package:flutter/material.dart';

class turtle extends StatefulWidget {
  const turtle({Key? key}) : super(key: key);

  @override
  State<turtle> createState() => _turtleState();
}

class _turtleState extends State<turtle> {
  int count=0;
  _turtleFeed(){
    count+=1;
    print(count);
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("寵物"),
        backgroundColor: Colors.green,
      ),
        body: Container(
          color: Color(0xfffad390),
          child:Column(
            children: [
              Container(
                height: 300,
                child: Column(
                  children: [
                    if(count<5)
                      Container(
                        margin: EdgeInsets.only(top: 165),
                        child: Center(
                          child:
                          Image.asset('asset/turtle/turtle1.png'),
                        ),
                      ),
                    if(5<=count && count<10)
                      Container(
                        margin: EdgeInsets.only(top: 160),
                        child: Center(
                          child:
                          Image.asset('asset/turtle/turtle2.png'),
                        ),
                      ),
                    if(10<=count &&count<15)
                      Container(
                        margin: EdgeInsets.only(top: 150),
                        child: Center(
                          child:
                          Image.asset('asset/turtle/turtle3.png'),
                        ),
                      ),
                    if(15<=count && count<25)
                      Container(
                        margin: EdgeInsets.only(top: 120),
                        child: Center(
                          child:
                          Image.asset('asset/turtle/turtle4.png'),
                        ),
                      ),
                    if(25<=count)
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        child: Center(
                          child:
                          Image.asset('asset/turtle/turtle5.png'),
                        ),
                      ),
                  ],
                ),
              ),

              const Padding(padding: EdgeInsets.only(bottom: 100)),
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
                        onPressed: _turtleFeed,
                        child: Text(
                            "陪伴"
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
    );
  }
}
