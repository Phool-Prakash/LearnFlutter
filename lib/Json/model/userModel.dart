// this is example of serialization and deserialization
//Serialization(toJson):- convert dart object to json
//Deserialization(fromJson):- convert json to dart object

class UserModel {
  final String name;
  final int age;
  final String email;
  UserModel({required this.name, required this.age, required this.email});

  //Deserialization
  factory UserModel.toJson(Map<String, dynamic> json) {
    return UserModel(
        name: json['name'] as String,
        age: json['age'] as int,
        email: json['email'] as String);
  }

  //Serialization(dart Object to Json)
  Map<String, dynamic> toJson() {
    return {'name': name, 'age': age, 'email': email};
  }
}
