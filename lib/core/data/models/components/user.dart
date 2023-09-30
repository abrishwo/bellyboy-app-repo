class User {
  final int? id;
  final String? name;
  final String? email;
  final String? password;
  final int? age;
  final String? gender;

  User({
     this.id,
     this.name,
     this.email,
     this.password,
     this.age,
     this.gender,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      age: json['age'],
      gender: json['gender'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'age': age,
      'gender': gender,
    };
  }
}

