class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;

  UserModel({this.email, this.firstName, this.secondName, this.uid});

  factory UserModel.fromMap(map) {
    return UserModel(
      email: map['email'],
      uid: map['uid'],
      firstName: map["firstName"],
      secondName: map["secondName"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firsName': firstName,
      'secondName': secondName,
    };
  }
}
