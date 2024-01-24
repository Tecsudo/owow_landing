import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

Future<String> contactUsForm({
  required String name,
  required String email,
  required String company,
  required String phone,
  required String details,
}) async {
  var url = Uri.parse('https://faraz369.pythonanywhere.com/api/information/');
  var headers = {
    'Content-Type': 'application/json',
  };
  http.Response? response = await http.post(
    url,
    headers: headers,
    body: json.encode(
      {
        "name": name,
        "email": email,
        "company": company,
        "phone": phone,
        "details": details,
      },
    ),
  );
  final res = Res.fromJson(response.body);
  log(res.status.toString());
  return 'done';
}

class Res {
  final int status;
  final String message;
  final List<Datum> data;

  Res({
    required this.status,
    required this.message,
    required this.data,
  });

  factory Res.fromJson(String str) => Res.fromMap(json.decode(str));

  factory Res.fromMap(Map<String, dynamic> json) => Res(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
      );
}

class Datum {
  final int id;
  final String name;
  final String company;
  final String email;
  final String phone;
  final String details;
  final dynamic restaurantId;
  final dynamic user;

  Datum({
    required this.id,
    required this.name,
    required this.company,
    required this.email,
    required this.phone,
    required this.details,
    required this.restaurantId,
    required this.user,
  });

  factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        company: json["company"],
        email: json["email"],
        phone: json["phone"],
        details: json["details"],
        restaurantId: json["restaurant_id"],
        user: json["user"],
      );
}
