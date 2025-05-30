import 'Artist.dart';

class Post {
  final DateTime dateCreated;
  final String title;
  final Artist artist;
  final String description;
  final String subCategory;
  final String imagePath;
  final String display;
  Post(this.dateCreated, this.imagePath, this.display,
      {required this.title,
      required this.artist,
      required this.description,
      required this.subCategory});
}
