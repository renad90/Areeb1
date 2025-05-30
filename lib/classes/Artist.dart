class Artist {
  String username;
  final String password;
  final String imagePath;
  final int followersCount;
  String bio;
  final String location;
  String displayName;
  Artist(
      {required this.username,
      required this.password,
      required this.imagePath,
      required this.followersCount,
      required this.bio,
      required this.location,
      required this.displayName});
}
