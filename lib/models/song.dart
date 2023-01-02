import 'package:neotify/gen/assets.gen.dart';

class Song {
  Song({
    this.songName = '',
    this.songPoster = '',
    this.songReleaseYear = '',
    this.songGenre = '',
    this.songDuration = '',
    this.songRating = '',
    this.songSinopsis = '',
    this.songSinger = '',
  });

  String songName;
  String songPoster;
  String songReleaseYear;
  String songGenre;
  String songDuration;
  String songRating;
  String songSinopsis;
  String songSinger;
}

var newSongs = [
  Song(
      songName: 'Sick Feeling',
      songPoster: Assets.images.boyPablo.path,
      songReleaseYear: '2021',
      songGenre: 'Romance',
      songDuration: '4m',
      songRating: '4.7',
      songSinopsis:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      songSinger: "Boy Pablo"),
  Song(
    songName: 'Glimpse Of us',
    songPoster: Assets.images.joji.path,
    songReleaseYear: '2022',
    songGenre: 'Romance',
    songDuration: '4m',
    songRating: '4.8',
    songSinopsis:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    songSinger: "Joji",
  ),
  Song(
    songName: 'My Love',
    songPoster: Assets.images.westlife.path,
    songReleaseYear: '2000',
    songGenre: 'Romance',
    songDuration: '4.5m',
    songRating: '4.2',
    songSinopsis:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    songSinger: "WestLife",
  ),
];

var upcomingSongs = [
  Song(
    songName: '505',
    songPoster: Assets.images.articsMonkey.path,
    songReleaseYear: '2022',
    songGenre: 'Neo-Psychedelia-Post-Punk-Revival-Art-Rock',
    songDuration: '4m',
    songRating: '4',
    songSinopsis:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    songSinger: "Artics Monkey",
  ),
  Song(
    songName: 'After Last Night',
    songPoster: Assets.images.brunoMars.path,
    songReleaseYear: '2022',
    songGenre: 'Funk-neo soul-R&B',
    songDuration: '2h 56m',
    songRating: '4.7',
    songSinopsis:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    songSinger: "Bruno Mars",
  ),
  Song(
    songName: 'Happiness',
    songPoster: Assets.images.roc.path,
    songReleaseYear: '2017',
    songGenre: 'Jazz-hip-hop-bedroom-pop-indie-rock-lo-fi-soft-rock',
    songDuration: '4.4m',
    songRating: '4.5',
    songSinopsis:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    songSinger: "Rex Orange Country",
  ),
];
