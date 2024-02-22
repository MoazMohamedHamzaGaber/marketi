import 'package:dio/dio.dart';

class ApiService{
  static late Dio dio;
  static init(){
   dio= Dio(
      BaseOptions(
        baseUrl: 'https://e-commerce-api-1812.onrender.com',
        receiveDataWhenStatusError: true
      )
    );
  }

 static Future<Response> getData({
    required String url,
    dynamic query,
   String? token,
})async{
   dio.options.headers={
     'Content-Type':'application/json',
     'Authorization':token ??'',
   };
    return await dio.get(url,queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    dynamic data,
    String? token,
  })async{
    dio.options.headers={
      'Content-Type':'application/json',
      'Authorization':token ??'',
    };
    return await dio.post(url,data: data);
  }
}