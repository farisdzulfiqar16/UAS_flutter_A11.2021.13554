// Logika autentikasi
import 'package:flutter/foundation.dart';

class AuthProvider with ChangeNotifier {
  String? _token;

  String? get token => _token;

  void login(String token) {
    _token = token;
    notifyListeners();
  }

  void logout() {
    _token = null;
    notifyListeners();
  }
}
