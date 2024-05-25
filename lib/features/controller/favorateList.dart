import 'package:movie_ui/features/models/movie_model.dart';


class FavorateList{

static List<Movie> listFav = [];

// static getFavList() {
//     return listFav;
//   }

static addListFav (Movie movie){
 listFav.add(movie);

}
}