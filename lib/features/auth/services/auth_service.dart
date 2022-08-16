import 'package:flutter_amazon_clone/constans/global_variables.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_amazon_clone/models/user.dart';

class AuthService {
  void signUpUser({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      User user = User(
        id: '',
        name: name,
        email: email,
        address: '',
        password: password,
        type: '',
        token: '',
      );

      http.Response res = await http.post(Uri.parse('$uri/api/signup'),
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json; chartset=UTF-8',
          });
    } catch (e) {}
  }
}
