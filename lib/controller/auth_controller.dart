import 'dart:convert';

import 'package:arman_ecommerce_node_backend/global_variables.dart';
import 'package:arman_ecommerce_node_backend/model/user.dart';
import 'package:arman_ecommerce_node_backend/services/manage_http_response.dart';
import 'package:http/http.dart' as http;

class AuthController {
  Future<void> signUpUsers({
    required context,
    required String email,
    required String fullName,
    required String password,
  }) async {
    try {
      User user = User(
        id: "",
        fullName: fullName,
        email: email,
        state: "",
        city: "",
        locality: "",
        password: password,
      );
      http.Response response = await http.post(Uri.parse('$uri/api/signup'),
          body: user
              .toJson(), // convert the user object to Json for the request body
          headers: <String, String>{
            // set the Headers for the request
            "Content-Type":
                "application/Json; charset=UTF-8", // specify the context type as Json
          });
      manageHttpResponse(
          response: response,
          context: context,
          onSuccess: () {
            showSnackBar(context, "Account has been Created for you");
          });
    } catch (e) {
      print("Error: $e");
    }
  }

  // Sign in users function

  Future<void> signInUsers({
    required context,
    required String email,
    required String password,
  }) async {
    try {
      http.Response response = await http.post(Uri.parse("$uri/api/signin"),
          body: jsonEncode(
            {
              'email': email, // include the email in the request body,
              'password': password, // include the password in the request body,
            },
          ),
          headers: <String, String>{
            // this will set the header
            "Content-Type":
            "application/Json; charset=UTF-8", // specify the context type as Json
          });

      // Handle the response using the manage httpResponse
      manageHttpResponse(response: response, context: context, onSuccess: () {});
      showSnackBar(context, "Logged In");
    } catch (e) {
      print("Error: $e");
    }
  }


}


