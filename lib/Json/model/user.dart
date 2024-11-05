//this is userModel
class User {
  final String name;
  final int age;
  final String email;

  User({required this.name, required this.age, required this.email});

  // factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // Map<String, dynamic> toJson() => _$UserToJson(this);
}

class Time {
  DateTime date;

  Time({required this.date});

  //Deserialize( json to dart Object)
  factory Time.fromJson(Map<String, dynamic> json) {
    return Time(date: DateTime.parse(json['date']));
  }

  //Serialize(Dart Object to Json)
  Map<String, dynamic> toJson() {
    return {'date': date.toIso8601String()};
  }
}

class Person {
  final nameOfPerson;
  final ageOfPerson;
  final accountNo;
  Person(
      {required this.nameOfPerson,
      required this.ageOfPerson,
      required this.accountNo});

  //Deserialize(json to PersonObject)
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
        nameOfPerson: json['nameOfPerson'] as String,
        ageOfPerson: json['ageOfPerson'] as String,
        accountNo: json['accountNo'] as String);
  }
}
