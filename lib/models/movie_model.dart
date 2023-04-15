// ignore_for_file: non_constant_identifier_names

class MovieModel {
  final int id;
  final String? title;
  final String? backgrop_path;
  final String? poster_path;

  MovieModel(
      {required this.id,
      required this.title,
      required this.backgrop_path,
      required this.poster_path});
}
