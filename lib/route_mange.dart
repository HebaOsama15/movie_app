import 'package:flutter/material.dart';
import 'package:movie_ui/features/models/movie_model.dart';
import 'package:movie_ui/features/views/Subscripe/SubscribeNow.dart';
import 'package:movie_ui/features/views/Subscripe/SubscriptionPlan1.dart';
import 'package:movie_ui/features/views/Subscripe/pay_method.dart';

import 'features/Views/Drower/edit_profile.dart';
import 'features/Views/Drower/ssubuscriptions.dart';
import 'features/Views/MainPages/home_screen.dart';
import 'features/Views/MainPages/navi.dart';
import 'features/Views/MainPages/wach_list.dart';
import 'features/Views/Subscripe/custom_plane.dart';
import 'features/Views/MainPages/filter_catogreis.dart';
import 'features/Views/MainPages/notification.dart';
import 'features/Views/Subscripe/payment_metod_choise.dart';
import 'features/Views/Subscripe/subscription_plan2.dart';
import 'features/Views/intro&sign/ceate_account.dart';
import 'features/Views/intro&sign/intodectionScreens.dart';
import 'features/Views/intro&sign/signin_account.dart';
import 'features/Views/intro&sign/verification_code.dart';
import 'features/views/MainPages/vidio.dart';
import 'features/views/Subscripe/Category.dart';


class RouteManager{
  // final bool showHome;
  // RouteManager({required this.showHome});
 static 
  Route<dynamic>? generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/':{return MaterialPageRoute(builder: (ctx){
      return 
    //  showHome ?  CreateAnAccount() : Intro();
   //  const Intro() ;
    //  FilterCategory();
      //CreateAnAccount();
     HomeScreen();
     // const CreateAnAccount();
          });
    }
    case '/intro':{
    //  List<Movie>listMovies = settings.arguments as List<Movie>;
        return MaterialPageRoute(builder: (ctx){
          //listMovies: listMovies,
          return   const Intro();

        });
    }
    case '/pay':{
    //  List<Movie>listMovies = settings.arguments as List<Movie>;
        return MaterialPageRoute(builder: (ctx){
          //listMovies: listMovies,
          return   PayMethod();

        });
    }
    case '/navi':{
    //  List<Movie>listMovies = settings.arguments as List<Movie>;
        return MaterialPageRoute(builder: (ctx){
          //listMovies: listMovies,
          return  const Nani();

        });
    }
     case '/vidio':{
        Movie movie = settings.arguments as Movie;
        return MaterialPageRoute(builder: (ctx){
          return  Vidio( movie: movie,);
        //videoUrl: "assets/videos/JohnWick_Chapter4.mp4",
        });
    }
    case '/custom_plan':{
        return MaterialPageRoute(builder: (ctx){
          return  const CustomPlan( );
        });
    }
     case '/watchList':{
      // List<Movie>listMovies = settings.arguments as List<Movie>;
        return MaterialPageRoute(builder: (ctx){
          // listMovies: listMovies,
          return WacthList();

        });
    }
   
    case '/pay_cohoise':{
        return MaterialPageRoute(builder: (ctx){
          return const PaymentMetodChoise();

        });
    }

    case '/categor':{
        return MaterialPageRoute(builder: (ctx){
          return  const Category();

        });
    }

    case '/notification':{
      return MaterialPageRoute(builder: (ctx){
        return Notifi();
      });
    }
    case '/subuscriptions':{
      return MaterialPageRoute(builder: (ctx){
        return const Subuscriptions();
      });
    }

    case '/edit_profile':{
      return MaterialPageRoute(builder: (ctx){
        return EditProfile();
      });
    }
    case '/create_account':{
      return MaterialPageRoute(builder: (ctx){
        return const CreateAnAccount();
      });
    }
    case '/signin':{
      return MaterialPageRoute(builder: (ctx){
        return const SingInAccowt();
      });
    }
    case '/home':{
      return MaterialPageRoute(builder: (ctx){
        return const HomeScreen();
      });
    }
    case '/ver_code':{
      return MaterialPageRoute(builder: (ctx){
        return const VerificationCode();
      });
    }
    case '/subc_now':{
      return MaterialPageRoute(builder: (ctx){
        return const SubscribeNow();
      });
    }
    case '/subsc_plane1':{
      return MaterialPageRoute(builder: (ctx){
        return  SubscriptionPlan1();
      });
    }
    case '/subsc_plane2':{
      return MaterialPageRoute(builder: (ctx){
        return  SubscriptionPlan2();
      });
    }
    case '/filter_category':{
      return MaterialPageRoute(builder: (ctx){
        return  const FilterCategory();
      });
    }
      default:{
        return MaterialPageRoute(builder: (ctx){
          return const HomeScreen();

        });}
    }
  }
}