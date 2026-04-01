import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String _userName = '';

  String get userName => _userName;

  void login(String email) {
    _userName = email.split('@')[0];
    notifyListeners();
  }

  void logout() {
    _userName = '';
    notifyListeners();
  }
}
