
import '../models/serial_model.dart';

class SerialController{
  final List<Serial>_allSerial=[];
  List<Map<String,dynamic>>data=[{
    "id": 1,
    "title": "The Last Of Us",
    "poster": "assets/images/StheLastOfUs.jpg",
    "classification": "Action",
    "rating": 4.9,
    "isLiked": false,
    "video": ["assets/videos/JohnWick_ Chapter4.mp4","assets/videos/JohnWick_ Chapter4.mp4","assets/videos/JohnWick_ Chapter4.mp4",],
  //  "season": "4"
  },
  {
    "id": 2,
    "title": "Upload",
    "poster": "assets/images/Supload.jpg",
    "classification": "Romantic",
    "rating": 3.0,
    "isLiked": false,
    "video": ["assets/videos/JohnWick_ Chapter4.mp4","assets/videos/JohnWick_ Chapter4.mp4","assets/videos/JohnWick_ Chapter4.mp4",],
  //  "season": "1"
  },
  {
    "id": 3,
    "title": "Leave The World Behind",
    "poster": "assets/images/leaveTheWorldBehind.jpg",
    "classification": "Drama",
    "rating": 2.9,
    "isLiked": false,
    "video": ["assets/videos/JohnWick_ Chapter4.mp4","assets/videos/JohnWick_ Chapter4.mp4","assets/videos/JohnWick_ Chapter4.mp4",],
   // "season": "3"
  },
  {
    "id": 4,
    "title": "Dead City",
    "poster": "assets/images/SdeadCity.jpg",
    "classification": "Horror",
    "rating": 4.5,
    "isLiked": false,
    "video": ["assets/videos/JohnWick_ Chapter4.mp4","assets/videos/JohnWick_ Chapter4.mp4","assets/videos/JohnWick_ Chapter4.mp4",],
  //  "season": "1"
  },
  {
    "id": 5,
    "title": "One Piece",
    "poster": "assets/images/SonePiece.jpg",
    "classification": "Comedy",
    "rating": 5,
    "isLiked": false,
    "video": ["assets/videos/JohnWick_ Chapter4.mp4","assets/videos/JohnWick_ Chapter4.mp4","assets/videos/JohnWick_ Chapter4.mp4",],
  //  "season": "2"
  },
  ];

   getAllSerials(){
      for (var element in data) {
        Serial model=Serial.fromJson(element);
        _allSerial.add(model);
        return _allSerial;
      }
    }
    List<Serial> get serials => _allSerial;
}



  //  getAllMovies(){
  //     for (var element in data) {
  //       Movie model=Movie.fromJson(element);
  //       _allMovie.add(model);
        
  //     }
  //     return _allMovie;
  //   }
  //    List<Movie> get moveis => _allMovie;