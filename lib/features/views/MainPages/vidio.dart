
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:movie_ui/core/componunts/main_pages_widgets/list_view_movies.dart';
import 'package:movie_ui/core/componunts/scaffolds.dart/app_bar.dart';
import 'package:movie_ui/features/models/movie_model.dart';

import 'package:video_player/video_player.dart';
import '../../controller/movie_controller.dart';

class Vidio extends StatefulWidget {
  late Movie movie;
   Vidio({ Key? key ,required this.movie }) : super(key: key);
  //final String videoUrl;
  @override
  State<Vidio> createState() => _VidioState();
}

class _VidioState extends State<Vidio> {
  List<bool> isPressedList = [false, false, false];
 late VideoPlayerController _videoPlayerController;
 late ChewieController _chewieController;
  //late VideoPlayerController _videoPlayerController;
 // late Future<void> _initializedVideoPlayerFuture;--------------------------
     MovieController movieController  = MovieController();
 @override
void initState() {
  super.initState();
  _videoPlayerController = VideoPlayerController.asset(
    'assets/videos/JohnWick_Chapter4.mp4',
   // widget.movie.video!,
  );

  _chewieController = ChewieController(
    videoPlayerController: _videoPlayerController,
    autoPlay: true,
    looping: false,
    aspectRatio: 16 / 9,
    // videoPlayerOptions: VideoPlayerOptions(
    //   mixWithOthers: true,
    //   preferredAudioLanguage: 'en',
    //   quality: ChewieQuality.HD,
    // ),
  );

//  @override
//   void initState() {
//     super.initState();
//     _initializeVideoPlayer();
//   }

//   Future<void> _initializeVideoPlayer() async {
//     _videoPlayerController = VideoPlayerController.network(
//       'https://example.com/video.mp4',
//     );

//     await _videoPlayerController.initialize();

//     setState(() {
//       _chewieController = ChewieController(
//         videoPlayerController: _videoPlayerController,
//         autoPlay: true,
//         looping: false,
//         aspectRatio: 16 / 9,
//         placeholder: Container(
//           color: Colors.black,
//           child: Center(
//             child: CircularProgressIndicator(),
//           ),
//         ),
//       );
//     });
//   }
    
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }
  
  // @override
  // void initState(){
  //  // _videoPlayerController = VideoPlayerController.asset("assets/videos/JohnWick_Chapter4.mp4");\
  //  _videoPlayerController = VideoPlayerController.asset(widget.videoUrl);
  //  _initializedVideoPlayerFuture= _videoPlayerController.initialize().then((_) {
  //   _videoPlayerController.play();
  //   _videoPlayerController.setLooping(true);
  //   setState(() {
      
  //   });
  //   super.initState();
  //  }
   
  //    );
  //    @override 
  //  void dispose(){
  //   _videoPlayerController.dispose();
  //   super.dispose();
  //  } 
  // }

  @override
  Widget build(BuildContext context) {
    print("the name of movoi is :${widget.movie.title}==================================");
     return 
    //  FutureBuilder(
    //   future: _initializedVideoPlayerFuture,
    //   builder: (context, snapshot){
    //     if(snapshot.connectionState == ConnectionState.done){
    //       return AspectRatio(aspectRatio: _videoPlayerController.value.aspectRatio,
    //       child: VideoPlayer(_videoPlayerController),);
    //     }else{
    //       //هنا ببدلها بالمكتبات
    //       return Center(
    //         child: CircularProgressIndicator(),
    //       );
    //     }
    //   }
    //   );
  Scaffold(
      backgroundColor: const Color(0xFF1E1F22),
      appBar: AppBarMovi(widget.movie.title!.toUpperCase(), context, false),
      body: SingleChildScrollView(
        child: Column(children: [
          //put video here
          SizedBox(height: 200,width: 500,child: Chewie(
          controller: _chewieController,
        ),),
        // _chewieController != null && _chewieController.videoPlayerController.value.isInitialized
        //     ? Chewie(
        //         controller: _chewieController,
        //       )
        //     : CircularProgressIndicator(),
          Container(
            margin: const EdgeInsets.only(top: 15, left: 10, right: 10),
          //  color: Colors.red,
            
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(widget.movie.title!.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                           // letterSpacing: 0.8
                           fontSize: 20
                          )),
                          const Padding(padding: EdgeInsets.all(5),),
                          Row(
                            children: [
                               Container(
                      height: 25,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.amberAccent[700],
                      ),
                      child: const Center(
                        child: Text(
                          "HD",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                     Text(widget.movie.classification!,style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ))
                            ],
                          )
      
                        ],
                      ),
                      Row(
                        children: [
                           Icon(
                          Icons.star_rate_rounded,
                          color: Colors.amberAccent[700],
                        ),
                         Text(
                          //rating
                          widget.movie.rating!.toString(),
                          style: const TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        ],
                      )
                      
      
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,),
                    child: Divider(color: Colors.grey[700],),
                  ),
      
                  Row(
                    children: [
                      for (var i = 1; i < 4; i++) 
                        
                      
                      TextButton(
        onPressed: () {
          setState(() {
        isPressedList[i - 1] = !isPressedList[i - 1];
          });
        },
        child: Text(
          "SEASON $i",
          style: TextStyle(
        fontSize: 15,
        color: isPressedList[i - 1] ? Colors.white : Colors.amberAccent[900],
        fontWeight: FontWeight.bold,
          ),
        ),
      )
                    ],
                  ), 
                   moviListView(validateTXT: false, validateSubTXT: false,),
                
                  
                 moviListView(title:"RECOMMENDED FOR YOU " ,validateTXT: true, validateSubTXT: false,),
      
                ],
              ),
            
          )
        ],),
      ),
    );
  }
}