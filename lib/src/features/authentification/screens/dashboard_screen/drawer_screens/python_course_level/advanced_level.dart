import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../../../constants/colors.dart';

class PythonAdvancedLevel extends StatefulWidget {
  const PythonAdvancedLevel({Key? key}) : super(key: key);

  @override
  State<PythonAdvancedLevel> createState() => _PythonAdvancedLevelState();
}

class _PythonAdvancedLevelState extends State<PythonAdvancedLevel> {
  late YoutubePlayerController _controller;
  List<Map<String, String>> _videoList = [
    {
      'title': 'Video 1',
      'subtitle': 'Subtitle 1',
      'videoId': 'Tb9k9_Bo-G4',
    },
    {
      'title': 'flutter',
      'subtitle': 'Subtitle 2',
      'videoId': '5qap5aO4i9A',
    },    {      'title': 'Video 3',
      'subtitle': 'Subtitle 3',
      'videoId': '2Vv-BfVoq4g',
    },  ];
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: _videoList[_selectedIndex]['videoId']!,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        isLive: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSecondaryColor,
      appBar: AppBar(
        backgroundColor: DSecondaryColor,
        title: Text("Level 3 Tutorials", style: Theme.of(context).textTheme.headline4,),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black, // set the color of the default icon
        ),
      ),
      body: RotatedBox(
        quarterTurns: _controller.value.isFullScreen ? 1 : 0,
        child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.black,
            progressColors: ProgressBarColors(
              playedColor: DSecondaryColor,
              handleColor: tSecondaryColor,
            ),
            onReady: () {
              _controller.addListener(() {
                if (_controller.value.isFullScreen) {
                  SystemChrome.setEnabledSystemUIOverlays([]);
                } else {
                  SystemChrome.setEnabledSystemUIOverlays(
                      SystemUiOverlay.values);
                }
              });
            },
          ),
          builder: (context, player) {
            return Column(
              children: [
                Expanded(child: player),
                Expanded(
                  child: ListView.builder(
                    itemCount: _videoList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          _videoList[index]['title']!,
                          style: TextStyle(
                            color: _selectedIndex == index ? Colors.black : tSecondaryColor,
                          ),
                        ),
                        subtitle: Text(
                          _videoList[index]['subtitle']!,
                          style: TextStyle(
                            color: _selectedIndex == index ? Colors.black : tSecondaryColor,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                            _controller.load(_videoList[_selectedIndex]['videoId']!);
                          });
                        },
                        selected: _selectedIndex == index,
                        // selectedTileColor: tSecondaryColor,
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

