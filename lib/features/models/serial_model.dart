import 'package:movie_ui/features/models/player_info.dart';

class Serial extends Season{

//List <Season>? season;
List<String>? video;

Serial({int? id, String? title,String? poster, String? classification, double?rating, bool? isLiked, List<String>? video  })
:super(id: id,title: title, poster: poster, classification: classification, rating: rating, isLiked: isLiked){
  //season = season;
  //  List<Season>? season,
  video = video;
}

//في تكرار هنا بعدين بنتفاهم معه
Serial.fromJson(Map<String, dynamic> json) {
  id = json['id'];
  title = json['title'];
  poster = json["poster"];
  classification = json["classification"];
  rating = json["rating"];
  isLiked = json["isLiked"];  
 // season = json["season"]; 
  video = json["video"]; 
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id; 
    data['title'] = title; 
    data['poster'] = poster; 
    data['classification'] = classification; 
    data['rating'] = rating; 
    data['isLiked'] = isLiked; 
   // data['season'] = season; 
    data['video'] = video; 
    return data;
}
}