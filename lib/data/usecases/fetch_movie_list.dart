import 'package:movie_app/core/data/usecase.dart';
import 'package:movie_app/data/entities/local/movie.local.dart';
import 'package:movie_app/data/repositories/home/app.repositories.dart';

class GetMovies extends BaseUsecase<List<Movie>, NoParams> {
  final AppRepositories _repository;

  const GetMovies(this._repository);

  @override
  Future<List<Movie>> call([NoParams? params]) async {
    final response = await _repository.fetchMovieList();
    return response;
  }
}
