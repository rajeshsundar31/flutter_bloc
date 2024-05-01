import 'dart:convert';

import 'package:todo_app/model/config.dart';
import 'package:todo_app/service/api_service.dart';


class GlobalService {
  Future getConfigService() async{

  try {
    var configService = await CommonApiServices().getResponse('globalconfig');

    final data = jsonDecode(configService);

    return Globalconfig.fromJson(data);
  } catch (e) {
    throw e.toString();
  }   

  }
}