import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  final String _usernameKey = 'username';
  final String _passwordKey = 'password';
  final String _isLoggedInKey = 'isLoggedIn';

  Future<void> signUp(String username, String password) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(_usernameKey, username);
      await prefs.setString(_passwordKey, password);
      await prefs.setBool(_isLoggedInKey, true);
    } catch (e) {
      // Handle any errors that occur during the sign-up process
      print('Error during sign up: $e');
      throw e; // Re-throw the error to propagate it to the caller
    }
  }

  Future<bool> login(String username, String password) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? savedUsername = prefs.getString(_usernameKey);
      String? savedPassword = prefs.getString(_passwordKey);

      if (savedUsername != null &&
          savedPassword != null &&
          username == savedUsername &&
          password == savedPassword) {
        await prefs.setBool(_isLoggedInKey, true);
        return true;
      }

      return false;
    } catch (e) {
      // Handle any errors that occur during the login process
      print('Error during login: $e');
      throw e; // Re-throw the error to propagate it to the caller
    }
  }

  Future<bool> isLoggedIn() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_isLoggedInKey) ?? false;
    } catch (e) {
      // Handle any errors that occur while checking if the user is logged in
      print('Error while checking login status: $e');
      throw e; // Re-throw the error to propagate it to the caller
    }
  }

  Future<void> logout() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove(_usernameKey);
      await prefs.remove(_passwordKey);
      await prefs.setBool(_isLoggedInKey, false);
    } catch (e) {
      // Handle any errors that occur during the logout process
      print('Error during logout: $e');
      throw e; // Re-throw the error to propagate it to the caller
    }
  }
}
