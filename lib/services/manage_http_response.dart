import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void manageHttpResponse({
  required http.Response response, // the HTTP response from the request
  required BuildContext context, // the context is to show snack bar
  required VoidCallback onSuccess, // the callback to execute on a successfully response

}) {
  // Switch statement to handle different http satatus codes
  switch(response.statusCode) {
    case 200: // status code 200 indicates a successfull request
      onSuccess();
      break;
    case 400: // status code 400 indicates a bad request
      showSnackBar(context, json.decode(response.body) ['msg']);
      break;
    case 500: // status code 500 indicates a server error
      showSnackBar(context, json.decode(response.body) ['error']);
      break;
    case 201: // status code 201 indicates a resource was created successfully
      onSuccess();
      break;
  }
}


void showSnackBar(BuildContext context, String title) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(title)));
}