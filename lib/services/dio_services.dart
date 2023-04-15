import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioService {
  static Dio dio() {
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        print(dotenv.env['TMDB_TOKEN']);
        options.baseUrl = 'https://api.themoviedb.org/3/';
        options.headers['Authorization'] = 'Bearer ${dotenv.env['TMDB_TOKEN']}';
        return handler.next(options);
      },
    ));
    return dio;
  }
}
