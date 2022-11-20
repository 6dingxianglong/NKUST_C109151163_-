import 'package:flutter/material.dart';
class page4 extends StatefulWidget {
  const page4({Key? key}) : super(key: key);

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {

  bool show1=false;
  bool show2=false;
  bool show3=false;
  bool show4=false;
  bool show5=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reading Plan'),
        centerTitle: true,
        backgroundColor: const Color(0xff12CBC4),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        '讀書計畫',
                        style: TextStyle(
                          fontSize: 40,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 6
                            ..color = Colors.blue[700]!,
                        ),
                      ),
                      // Solid text as fill.
                      Text(
                        '讀書計畫',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  ),
                ),

                TextButton(
                style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: (){
                  show1=!show1;
                  setState(() {});},
                child: const Text("大一(點我)", style: TextStyle(fontSize: 20,)),),
                if(show1)
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 3),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [BoxShadow(color: Color(0xfffad390),offset: Offset(6, 6)),
                        ]),
                    child: const Text("1.紮實基礎課程（如計算機概論、物件導向程式設計、資訊系統原理、資料結構等）。"
                        "\n1.加強學習JavaJava不僅在課堂中會使用到，也是雲端介面中處處可見程式語言，在課堂前先學會Java語法將會在學習上有很大的助益。\n"
                        "3.加強英、日語能力，並開始為大三、大四時的語言檢定做準備\n"
                        "4.加入資訊社團，認識其他系的同學以增長見聞。",
                        style: TextStyle(fontSize: 15,)
                    ),
                  ),
                SizedBox(height: 20,),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: (){
                    show2=!show2;
                    setState(() {});},
                  child: const Text("大二(點我)", style: TextStyle(fontSize: 20,)),),

                if(show2)
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 3),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [BoxShadow(color: Color(0xfffad390),offset: Offset(6, 6)),
                        ]),
                    child: const Text("1.持續紮實資訊基礎課程，嘗試跨領域基礎課程。\n"
                        "2.學習Verilog語言。Verilog在大二的課程中會使用到，在課堂外也要多多練習，才能更流暢地使用\n"
                        "3.掌握資工系三大數學學科。離散數學、線性代數、機率為資工系必讀的三門數學課，運用在許多方面，將這三門學科運用在程式上可加強程式的邏輯性與實用性。\n"
                        "4.找尋自己所喜愛的專題並進行初步了解。讀書不僅是為了學習新知，更是要讀出興趣，了解最新的科技資訊，如Google的流感預測、資訊科技在醫學分析的運用等，了解自己感興趣的專題，讓學習不枯燥乏味。",
                        style: TextStyle(fontSize: 15,)
                    ),
                  ),

                SizedBox(height: 20,),

                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: (){
                    show3=!show3;
                    setState(() {});},
                  child: const Text("大三(點我)", style: TextStyle(fontSize: 20,)),),
                if(show3)
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 3),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [BoxShadow(color: Color(0xfffad390),offset: Offset(6, 6)),
                        ]),
                    child: const Text("1.學習初步的SQL語法，加強我資料庫處理能力。\n"
                        "2.加強資訊、網路多媒體、資訊電子工程等課程。\n"
                        "3.大三升大四的暑假之中，考取TOEIC與TOEFL。\n"
                        "4.參加語言訓練中心的日語檢定。\n"
                        "5.進行資訊專題研究。",
                        style: TextStyle(fontSize: 15,)
                    ),
                  ),

                SizedBox(height: 20,),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: (){
                    show4=!show4;
                    setState(() {});},
                  child: const Text("大四(點我)", style: TextStyle(fontSize: 20,)),),
                if(show4)
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 3),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [BoxShadow(color: Color(0xfffad390),offset: Offset(6, 6)),
                        ]),
                    child: const Text("1.進行整合型及跨領域專題研究。\n"
                        "2.為研究所考試作準備。\n"
                        "3.取實習機會。",
                        style: TextStyle(fontSize: 15,)
                    ),
                  ),

                SizedBox(height: 20,),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: (){
                    show5=!show5;
                    setState(() {});},
                  child: const Text("畢業後(點我)", style: TextStyle(fontSize: 20,)),),
                if(show5)Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 3),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [BoxShadow(color: Color(0xfffad390),offset: Offset(6, 6)),
                      ]),
                  child: const Text("1.考取國內或國外的資訊相關研究所。\n"
                      "2.投入雲端資訊產業，累積實質經驗\n"
                      "3.要隨時掌握資訊產業的脈動，設計出有商業價值，能帶給使用者全新且獨特的社群網站或影音分享網站，完成幼年時的夢想。"
                      "\n4.盡一份社會責任，運用雲端技術協助單一學校或區域內學校，運用現有資源完成短期擴充教育系統。尤其針對偏鄉學校，我想多盡一些力量，邀請有志人士，共同協助學校的資訊科學發展。",
                      style: TextStyle(fontSize: 15,)
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}