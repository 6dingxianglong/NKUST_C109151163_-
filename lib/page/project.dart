import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'project',
          style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: const Color(0xff12CBC4),

      ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/bg3.jpg"),
                fit: BoxFit.cover,
              )
          ),
          child: ListView(
            children:   [
              SizedBox(height: 20,),
              const Center(
                child: Text(
                  "實務專題",
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 50,),
              const Center(
                child: Text(
                  "基於網路封包偵測DDoS攻擊之研究",
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ), SizedBox(height: 30,),
              const Center(
                child: Text(
                  "專題隊員",
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Center(
                child: Text("丁襄龍 C109151163\n許哲晟 C109151162"),
              ),
              SizedBox(height: 50,),
              Container(
                margin: EdgeInsets.all(20),
                child: const Text("摘要\n       本研究的貢獻是實作一套DDos偵測及防護系統，"
                    "最終目標是實作一套完整的DDoS偵測及防禦系統，"
                    "階段一是抓取網路封包(主要是TCP、UDP、HTTP三種)，"
                    "經由機器學習來分辨正常封包和垃圾封包，進而判斷受到哪種類型DDoS攻擊，"
                    "階段二是使用執行緒，讓系統定期抓取網路封包，而不再需要手動擷取封包，"
                    "階段三是運用類似黑洞路由等技術，讓垃圾封包丟棄，\n\n關鍵字：DDos、網路安全"

                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: const Text("一、	導論\n      網路攻擊已成為家常便飯，"
                    "尤其是全球地緣政治的熱區，從烏克蘭、朝鮮半島到台灣都是，"
                    "而 DDoS 更是常見的網攻手法。在美國國會眾議院議長裴洛西（Nancy Pelosi）2 日訪台前夕，"
                    "總統府及外交部等部分政府機關網站受到境外 DDoS 攻擊，其中總統府官網的流量高達平日的 200 倍，"
                    "導致官網一度無法顯示。資安就是國安，資安能力成為新的國家戰力指標，日新月異又無所不在的資安攻擊已是全球矚目的國安威脅之一。"
                    "台灣因地緣政治與區域鄰近性，經常遭受各種新式資安攻擊的國際資安攻防熱區，從 2 月起的俄烏戰爭引起網絡犯罪分子利用更多的地緣政治來攻擊關鍵基礎設施，"
                    "讓亞太地區國家、企業更加體認網路攻擊增添地緣政治的風險變數。DDoS 攻擊易使企業損失慘重，"
                    "宏碁集團旗下的資安事業安碁資訊表示，Covid-19 疫情期間常見駭客組織利用 DDoS 發動攻擊。DDoS (Distributed Denial of Service) 就是「分散式阻斷服務攻擊」，"
                    "是一種有心人的惡意嘗試，利用大量的網際網路流量，使標的物或周圍的基礎設施不堪重負，癱瘓標的物和系統的運作與服務，進而阻斷標的物伺服器、服務或網路的正常流量。"
                    "目前對於這個問題的相關研究主要是針對流量來判斷是否遭受DDoS攻擊，我們希望可以用大數據來做出隨機森林，經過實驗組合對照組，進而判別是否遭受DDoS攻擊，並對其進行防禦。"
                ),
              )
            ],
          ),
        )
    );
  }
}