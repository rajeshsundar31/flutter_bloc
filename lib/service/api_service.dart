import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todo_app/model/config.dart';



class CommonApiServices {
  static var  client = http.Client();

  var url = Uri.parse("https://lx5uvs9th9.execute-api.ap-southeast-1.amazonaws.com/demo-dp/configservice/v1/");



  Future getResponse(String Api) async {
    try {

      final Map<String, String> headers = {
      "Content-Type": "application/json",
      'x-api-key': 'hIvXcy5OGB1cbC6Axl1zx1QBYf4rjXM34uKhorfM',
    };
      final response  = await client.get(Uri.parse("https://lx5uvs9th9.execute-api.ap-southeast-1.amazonaws.com/demo-dp/configservice/v1/$Api"), headers: headers);


      return response.body;
    } catch (e){
      throw e.toString();
    }
  }
}