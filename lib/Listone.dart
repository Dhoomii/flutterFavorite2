
List<PageModel> pages = List<PageModel>();

void_addPages(){
  pages.add(PageModel("A1","A2","A3","A4","A5","A6","A7","A8","A9"));
  pages.add(PageModel("B1","B2","B3","B4","B5","B6","B7","B8","B9"));
  pages.add(PageModel("C1","C2","C3","C4","C5","C6","C7","C8","C9"));
  pages.add(PageModel("D1","D2","D3","D4","D5","D6","D7","D8","D9"));
  pages.add(PageModel("E1","E2","E3","E4","E5","E6","E7","E8","E9"));
  pages.add(PageModel("F1","F2","F3","F4","F5","F6","F7","F8","F9"));
  pages.add(PageModel("G1","G2","G3","G4","G5","G6","G7","G8","G9"));
  pages.add(PageModel("L1","L2","L3","L4","L5","L6","L7","L8","L9"));
  pages.add(PageModel("M1","M2","M3","M4","M5","M6","M7","M8","M9"));
}
class PageModel{
  String _Textone;
  String _Texttow;
  String _Textthree;
  String _Textfuor;
  String _Textfife;
  String _Textsex;
  String _Textseven;
  String _Texteat;
  String _Textnain;



  PageModel(this._Textone, this._Texttow, this._Textthree,this._Textfuor,this._Textfife,this._Textsex,this._Textseven,this._Texteat,this._Textnain);

  String get Textone => _Textone;

  String get Texttow => _Texttow;
  String get Textthree => _Textthree;
  String get Textfuor => _Textfuor;
  String get Textfife=> _Textfife;
  String get Textsex => _Textsex;
  String get Textseven => _Textseven;
  String get Texteat => _Texteat;
  String get Textnain=> _Textnain;
}
