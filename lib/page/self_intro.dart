import 'package:flutter/material.dart';

import 'menu.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Self Intro',
          style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: const Color(0xffEBB471),

        ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.fromLTRB(0, 30, 220, 20),
              child: Text("Who am  I",
                style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
              ,),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 3),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [BoxShadow(color: Colors.amberAccent,offset: Offset(6, 6)),
                  ]),
              child: const Text("您好，我是丁襄龍，在熱情的台灣南部─高雄出生，在家中是老么。"
                  "父母總是叮嚀：做人要腳踏實地，更要積極努力。對於自己的人生，也是一直遵循著這句話向前走。"
                  "高職時期就讀中正高工電子系，參加的社團是管樂社，曾和樂團經到大東藝術中心"
                  "表演過，除了閒暇時間在管樂社練習豎笛，也讓成績保持在前段班，以第五名畢業。"
                  "報選第一志願高科大(主要是離家近)的資工系，會從電子轉資工主要原因是近年人工智慧、大數據等"
                  "流行，也在高職時期有接觸過程式碼，對其感到興趣，一年級被物理成績搞稿了，但隨後幾次排名都"
                  "在前十，希望可以推甄上中字輩研究所。",style: TextStyle(fontSize: 20),),
            ),

            Container(
              color: Colors.redAccent,
              child: Image.asset('asset/img1.jpg'),
              height: 236,
              width: 236,
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                        color: Colors.purple,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage('asset/img1.jpg'),
                        fit:BoxFit.cover ,
                      ) ,
                    )
                ),
                Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                        color: Colors.purple,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage('asset/img1.jpg'),
                        fit:BoxFit.cover ,
                      ) ,
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}