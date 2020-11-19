import 'package:mvc_structure_gogoapp/src/models/profile.dart';

class User {
  final String id;
  final String userName;
  final String nickName;
  final Profile profile;

  User({this.id, this.userName, this.nickName, this.profile});

  User.fromMap(Map<String, dynamic> map)
      : this.id = map['id'],
        this.userName = map['userName'],
        this.nickName = map['nickName'],
        this.profile = Profile.fromMap(map['profile']);

  Map<String, dynamic> toMap() => {
        'userName': this.userName,
        'nickName': this.nickName,
        'profile': this.profile.toMap(),
      };
}
