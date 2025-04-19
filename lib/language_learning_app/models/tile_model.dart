import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/language_learning_app/models/toku_app_data.dart';
import 'package:flutter_fundamentals/language_learning_app/models/toku_app_routes.dart';

class ContentTileModel {
  final String? image;
  final String title;
  final String subtitle;
  final String sound;
  final Color color;

  const ContentTileModel({
    this.image,
    required this.title,
    required this.subtitle,
    required this.sound,
    required this.color,
  });
}

class MainTileModel {
  final String title;
  final Color color;
  MainTileModel({
    required this.title,
    required this.color,
  });
}

final Map<String, List<ContentTileModel>> contentTiles = {
  TokuAppRouts.numbers: [
    ContentTileModel(
      title: TokuAppRouts.numbers,
      subtitle: "Numbers",
      sound: TokuAppSounds.numbersSounds['one']!,
      color: Colors.orange,
      image: TokuAppImages.numbersImages['one'],
    ),
    ContentTileModel(
      title: TokuAppRouts.numbers,
      subtitle: "Numbers",
      sound: TokuAppSounds.numbersSounds['two']!,
      color: Colors.orange,
      image: TokuAppImages.numbersImages['two'],
    ),
    ContentTileModel(
      title: TokuAppRouts.numbers,
      subtitle: "Numbers",
      sound: TokuAppSounds.numbersSounds['three']!,
      color: Colors.orange,
      image: TokuAppImages.numbersImages['three'],
    ),
    ContentTileModel(
      title: TokuAppRouts.numbers,
      subtitle: "Numbers",
      sound: TokuAppSounds.numbersSounds['four']!,
      color: Colors.orange,
      image: TokuAppImages.numbersImages['four'],
    ),
    ContentTileModel(
      title: TokuAppRouts.numbers,
      subtitle: "Numbers",
      sound: TokuAppSounds.numbersSounds['five']!,
      color: Colors.orange,
      image: TokuAppImages.numbersImages['five'],
    ),
    ContentTileModel(
      title: TokuAppRouts.numbers,
      subtitle: "Numbers",
      sound: TokuAppSounds.numbersSounds['six']!,
      color: Colors.orange,
      image: TokuAppImages.numbersImages['six'],
    ),
    ContentTileModel(
      title: TokuAppRouts.numbers,
      subtitle: "Numbers",
      sound: TokuAppSounds.numbersSounds['seven']!,
      color: Colors.orange,
      image: TokuAppImages.numbersImages['seven'],
    ),
    ContentTileModel(
      title: TokuAppRouts.numbers,
      subtitle: "Numbers",
      sound: TokuAppSounds.numbersSounds['eight']!,
      color: Colors.orange,
      image: TokuAppImages.numbersImages['eight'],
    ),
    ContentTileModel(
      title: TokuAppRouts.numbers,
      subtitle: "Numbers",
      sound: TokuAppSounds.numbersSounds['nine']!,
      color: Colors.orange,
      image: TokuAppImages.numbersImages['nine'],
    ),
    ContentTileModel(
      title: TokuAppRouts.numbers,
      subtitle: "Numbers",
      sound: TokuAppSounds.numbersSounds['ten']!,
      color: Colors.orange,
      image: TokuAppImages.numbersImages['ten'],
    ),
  ],
  TokuAppRouts.familyMembers: [
    ContentTileModel(
      title: TokuAppRouts.familyMembers,
      subtitle: "Family Members",
      sound: TokuAppSounds.familyMembersSounds['father']!,
      color: Colors.green.shade800,
      image: TokuAppImages.familyMembersImages['father'],
    ),
    ContentTileModel(
      title: TokuAppRouts.familyMembers,
      subtitle: "Family Members",
      sound: TokuAppSounds.familyMembersSounds['mother']!,
      color: Colors.green.shade800,
      image: TokuAppImages.familyMembersImages['mother'],
    ),
    ContentTileModel(
      title: TokuAppRouts.familyMembers,
      subtitle: "Family Members",
      sound: TokuAppSounds.familyMembersSounds['son']!,
      color: Colors.green.shade800,
      image: TokuAppImages.familyMembersImages['son'],
    ),
    ContentTileModel(
      title: TokuAppRouts.familyMembers,
      subtitle: "Family Members",
      sound: TokuAppSounds.familyMembersSounds['daughter']!,
      color: Colors.green.shade800,
      image: TokuAppImages.familyMembersImages['daughter'],
    ),
    ContentTileModel(
      title: TokuAppRouts.familyMembers,
      subtitle: "Family Members",
      sound: TokuAppSounds.familyMembersSounds['grandfather']!,
      color: Colors.green.shade800,
      image: TokuAppImages.familyMembersImages['grandfather'],
    ),
    ContentTileModel(
      title: TokuAppRouts.familyMembers,
      subtitle: "Family Members",
      sound: TokuAppSounds.familyMembersSounds['grandmother']!,
      color: Colors.green.shade800,
      image: TokuAppImages.familyMembersImages['grandmother'],
    ),
    ContentTileModel(
      title: TokuAppRouts.familyMembers,
      subtitle: "Family Members",
      sound: TokuAppSounds.familyMembersSounds['older_sister']!,
      color: Colors.green.shade800,
      image: TokuAppImages.familyMembersImages['older_sister'],
    ),
    ContentTileModel(
      title: TokuAppRouts.familyMembers,
      subtitle: "Family Members",
      sound: TokuAppSounds.familyMembersSounds['older_brother']!,
      color: Colors.green.shade800,
      image: TokuAppImages.familyMembersImages['older_brother'],
    ),
    ContentTileModel(
      title: TokuAppRouts.familyMembers,
      subtitle: "Family Members",
      sound: TokuAppSounds.familyMembersSounds['younger_brother']!,
      color: Colors.green.shade800,
      image: TokuAppImages.familyMembersImages['younger_brother'],
    ),
    ContentTileModel(
      title: TokuAppRouts.familyMembers,
      subtitle: "Family Members",
      sound: TokuAppSounds.familyMembersSounds['younger_sister']!,
      color: Colors.green.shade800,
      image: TokuAppImages.familyMembersImages['younger_sister'],
    ),
  ],
  TokuAppRouts.colors: [
    ContentTileModel(
      title: TokuAppRouts.colors,
      subtitle: "Colors",
      sound: TokuAppSounds.colorsSounds['black']!,
      color: Colors.black,
      image: TokuAppImages.colorsImages['black'],
    ),
    ContentTileModel(
      title: TokuAppRouts.colors,
      subtitle: "Colors",
      sound: TokuAppSounds.colorsSounds['brown']!,
      color: Colors.brown,
      image: TokuAppImages.colorsImages['brown'],
    ),
    ContentTileModel(
      title: TokuAppRouts.colors,
      subtitle: "Colors",
      sound: TokuAppSounds.colorsSounds['gray']!,
      color: Colors.grey,
      image: TokuAppImages.colorsImages['gray'],
    ),
    ContentTileModel(
      title: TokuAppRouts.colors,
      subtitle: "Colors",
      sound: TokuAppSounds.colorsSounds['red']!,
      color: Colors.red,
      image: TokuAppImages.colorsImages['red'],
    ),
    ContentTileModel(
      title: TokuAppRouts.colors,
      subtitle: "Colors",
      sound: TokuAppSounds.colorsSounds['white']!,
      color: Colors.white,
      image: TokuAppImages.colorsImages['white'],
    ),
    ContentTileModel(
      title: TokuAppRouts.colors,
      subtitle: "Colors",
      sound: TokuAppSounds.colorsSounds['yellow']!,
      color: Colors.yellow,
      image: TokuAppImages.colorsImages['yellow'],
    ),
    ContentTileModel(
      title: TokuAppRouts.colors,
      subtitle: "Colors",
      sound: TokuAppSounds.colorsSounds['green']!,
      color: Colors.green,
      image: TokuAppImages.colorsImages['green'],
    ),
    ContentTileModel(
      title: TokuAppRouts.colors,
      subtitle: "Colors",
      sound: TokuAppSounds.colorsSounds['dusty_yellow']!,
      color: Colors.orange,
      image: TokuAppImages.colorsImages['dusty_yellow'],
    ),
  ],
  TokuAppRouts.phrases: [
    ContentTileModel(
      title: TokuAppRouts.phrases,
      subtitle: "Phrases",
      sound: TokuAppSounds.phrasesSounds['are_you_coming']!,
      color: Colors.orange,
    ),
    ContentTileModel(
      title: TokuAppRouts.phrases,
      subtitle: "Phrases",
      sound: TokuAppSounds.phrasesSounds['dont_forget_to_subscribe']!,
      color: Colors.orange,
    ),
    ContentTileModel(
      title: TokuAppRouts.phrases,
      subtitle: "Phrases",
      sound: TokuAppSounds.phrasesSounds['i_love_programming']!,
      color: Colors.orange,
    ),
    ContentTileModel(
      title: TokuAppRouts.phrases,
      subtitle: "Phrases",
      sound: TokuAppSounds.phrasesSounds['what_is_your_name']!,
      color: Colors.orange,
    ),
    ContentTileModel(
      title: TokuAppRouts.phrases,
      subtitle: "Phrases",
      sound: TokuAppSounds.phrasesSounds['how_are_you_feeling']!,
      color: Colors.orange,
    ),
    ContentTileModel(
      title: TokuAppRouts.phrases,
      subtitle: "Phrases",
      sound: TokuAppSounds.phrasesSounds['where_are_you_going']!,
      color: Colors.orange,
    ),
    ContentTileModel(
      title: TokuAppRouts.phrases,
      subtitle: "Phrases",
      sound: TokuAppSounds.phrasesSounds['i_love_anime']!,
      color: Colors.orange,
    ),
    ContentTileModel(
      title: TokuAppRouts.phrases,
      subtitle: "Phrases",
      sound: TokuAppSounds.phrasesSounds['programming_is_easy']!,
      color: Colors.orange,
    ),
    ContentTileModel(
      title: TokuAppRouts.phrases,
      subtitle: "Phrases",
      sound: TokuAppSounds.phrasesSounds['yes_im_coming']!,
      color: Colors.orange,
    ),
  ],
};
