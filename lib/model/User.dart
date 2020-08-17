import 'package:favorite2/utils/Utils.dart';

class User {
  int id;
  String name;
  String text1;
  String text2;
  String favorite;

  User({this.id, this.name, this.text1, this.text2, this.favorite});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnName: name,
      columnText1: text1,
      columnText2: text2,
      columnFavorite: favorite
    };
    if (id != null) {
      map[columnId] = id;
    }
    print('mapppp' + map.toString());
    return map;
  }

  User.fromMap(Map<String, dynamic> map) {
    id = map[columnId];
    name = map[columnName];
    text1 = map[columnText1];
    text2 = map[columnText2];
    favorite = map[columnFavorite];
  }
}