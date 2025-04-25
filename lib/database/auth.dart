import "package:mck_pay/database/user.dart";
import "package:supabase_flutter/supabase_flutter.dart";

class AuthService {
  final Supabase _supabase = Supabase.instance;

  Future<Users?> signIn(String email, String password) async {
    try {
      var userGet = await _supabase.client.auth.signInWithPassword(
        password: password,
        email: email,
      );

      User user = userGet.user!;

      return Users.fromSupabase(user);
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<Users?> signUp(String email, String password) async {
    try {
      var userGet = await _supabase.client.auth.signUp(
        password: password,
        email: email,
      );

      User user = userGet.user!;

      return Users.fromSupabase(user);
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> logOut() async {
    try {
      await _supabase.client.auth.signOut();
    } catch (e) {
      return;
    }
  }

  Future<void> recoveryPassword(String email) async {
    try {
      await _supabase.client.auth.resetPasswordForEmail(email);
    } catch (e) {
      return;
    }
  }
}
