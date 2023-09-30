import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import '../models/models.dart';

class UserData{

Future<List<User>> getAllUsers() async {
  try {
    
    final jsonString = await rootBundle.loadString('data/user.json');

    final jsonData = json.decode(jsonString) as List<dynamic>;
    final users = jsonData.map((json) => User.fromJson(json)).toList();

    return users;
  } catch (e) {
    print('Error loading user data: $e');
    return [];
  }
}


//login

Future<User?> login(String email, String password) async {
  try {
    final jsonString = await rootBundle.loadString('assets/dummy/user_data.json');
    final jsonData = json.decode(jsonString) as List<dynamic>;
    final users = jsonData.map((json) => User.fromJson(json)).toList();

    User user = users.firstWhere(
      (user) => user.email == email && user.password == password,
      orElse: () => null as User, 
    );

    return user;
  } catch (e) {
    print('Error loading user data: $e');
    return null; 
  }
}


}