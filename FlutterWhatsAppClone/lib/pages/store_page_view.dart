import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  final _storyController = StoryController();
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text(title: 'Sometimes you gotta run before you walk.'
        , backgroundColor: Colors.yellow),
    
      StoryItem.pageImage(
          url:
              "https://i0.wp.com/pbs.twimg.com/media/D3UCa-VUYAEUXOA.jpg",
          controller: _storyController,
          imageFit: BoxFit.contain),
    ];
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: false,
      ),
    );
  }
}
