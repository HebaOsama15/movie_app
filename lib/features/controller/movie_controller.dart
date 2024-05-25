import '../models/movie_model.dart';

class MovieController{
  final List<Movie>_allMovie=[];
  List<Map<String,dynamic>>data=[{
    "id": 1,
    "title": "John Wick 4",
    "poster": "assets/images/movi1.jpg",
    "classification": "Action",
    "rating": 4.9,
    "isLiked": false,
    "video": "assets/videos/JohnWick_ Chapter4.mp4",
   // "season": "4"
  },
  {
    "id": 2,
    "title": "barbie",
    "poster": "assets/images/barbieMovie.jpg",
    "classification": "Romantic",
    "rating": 3.0,
    "isLiked": false,
    "video": "assets/videos/JohnWick_ Chapter4.mp4",
   // "season": "1"
  },
  {
    "id": 3,
    "title": "Air",
    "poster": "assets/images/air.jpg",
    "classification": "Drama",
    "rating": 2.5,
    "isLiked": false,
    "video": "assets/videos/JohnWick_ Chapter4.mp4",
   // "season": "3"
  },
  {
    "id": 4,
    "title": "Evil Dead Rise",
    "poster": "assets/images/evilDeadRise.jpg",
    "classification": "Horror",
    "rating": 4.5,
    "isLiked": false,
    "video": "assets/videos/JohnWick_ Chapter4.mp4",
   // "season": "1"
  },
  {
    "id": 5,
    "title": "Wonka",
    "poster": "assets/images/WonkaMovie.jpg",
    "classification": "Comedy",
    "rating": 4.1,
    "isLiked": false,
    "video": "https://www.youtube.com/watch?v=otNh9bTjXWg",
   // "season": "2"
  }
  ];

   getAllMovies(){
      for (var element in data) {
        Movie model=Movie.fromJson(element);
        _allMovie.add(model);
        
      }
      return _allMovie;
    }
     List<Movie> get moveis => _allMovie;
}
