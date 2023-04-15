import 'package:flexflix/models/movie_model.dart';
import 'package:flexflix/services/dio_services.dart';

class PrincipalController {
  Future getFilmesPrincipais() async {
    try {
      var response = await DioService.dio().get('discover/movie');
      print(response.data['results']);
      List<MovieModel> moveiList = [];
      for (var movie in response.data['results']) {
        moveiList.add(MovieModel(
            id: movie['id'],
            title: movie['title'],
            backgrop_path: movie['backgrop_path'],
            poster_path: movie['poster_path']));
      }
      return moveiList;
    } catch (e) {
      print(e);
    }
  }
}
