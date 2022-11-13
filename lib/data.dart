

class skillList{
  List<dynamic> _program=[
    ["python",false,"python：功能強大，機器學習的好幫手\n"],
    ["C++",false,"C++：有點久沒碰了，有空的話應該會學學C#比較好\n"],
    ["Java",false,"java：寫起來比py嚴謹，個人比較喜歡\n"],
    ["Dart",false,"Dart【跟java有點像，最近剛學\n"],
    ["JavaScript",false,"JavaScript：寫網頁不可缺的程式語言，如果我有空的話要來玩玩TypeScript\n"],
    ["Css",false,"Css：Tailwindcss比他好\n"],
    ["Html",false,"Html：就html\n"],
    ["Tailwindcss",false,"Tailwindcss：比css好\n"],
    ["SQL",false,"SQL：這學期有兩堂課在教這個\n"]];

  List<dynamic> _skill=[
    ["機器學習",false,'機器學習：專題要用的技術\n'],
    ["深度學習",false,"深度學習：專題感覺會用到\n"],
    ["資料結構",false,"資料結構：蠻重要的，可配合演算法\n"],
    ["演算法",false,"演算法：目前蠻好玩的，目前\n"],
    ["Android Studio",false,"Android Studio：之前有玩過\n"],
    ["flutter",false,"flutter：寫app很方便，也蠻好玩\n"]
  ];

  List getprogram(){
    return _program;
  }
  List getskill(){
    return _skill;
  }

  int getprogramLen(){
    return _program.length;
  }
  int getskillLen(){
    return _skill.length;
  }

}