// ignore_for_fileary_private_types_in_public_api, prefer_const_constructors

import 'package:areeb/classes/list.dart';
import 'package:flutter/material.dart';

import 'classes/Artist.dart';
import 'Profile1.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState(artist: artist2);
}

class _EditProfileState extends State<EditProfile> {
  final double coverHeight = 200;
  final double profileHeight = 144;
  final Artist artist;
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController bioController = TextEditingController();

  String coverImageUrl =
      'https://thumbs.dreamstime.com/b/photographer-typographic-header-professional-camera-taking-pictures-studio-artistic-occupation-photography-217078994.jpg';

  _EditProfileState({required this.artist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(251, 246, 242, 1.000),
        title: Text('Edit Profile'),
        actions: [
          //so o can put the logo in the right
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/areeb.png',
              height: 50.0,
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(251, 246, 242, 1.000),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildTop(),
            SizedBox(height: 20),
            buildContent(),
          ],
        ),
      ),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none, //to overlap the profile image
      alignment: Alignment.center,
      children: [
        Container(
          margin:
              EdgeInsets.only(bottom: bottom), // a margin at the bottom only
          child: buildCoverImage(),
        ),
        Positioned(
          left: 16,
          top: top,
          child: buildProfileImage(),
        )
      ],
    );
  }

  Widget buildCoverImage() {
    return Container(
      color: const Color.fromARGB(255, 25, 24, 24),
      child: Image.network(
        coverImageUrl,
        width: double.infinity, //fill all available horizontal space
        height: coverHeight,
        fit: BoxFit.cover, //fill the entire area of the container
      ),
    );
  }

  Widget buildProfileImage() {
    return CircleAvatar(
      radius: profileHeight / 2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: AssetImage("assets/MayaPFP.jpg"),
    );
  }

  Widget buildContent() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, //control the alignment of children of Column
          crossAxisAlignment: CrossAxisAlignment
              .start, //control the alignment of children of the Column
          children: [
            TextField(
              controller: nameController, //manage input of the text
              decoration: InputDecoration(
                // hint text
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 16.0), //space
            TextField(
              controller: usernameController, //manage input of the text
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: bioController, //manage input of the text
              decoration: InputDecoration(
                labelText: 'Bio',
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              //to create the save button n use the onpressed to navigate to profile
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(141, 180, 121, 1.000),
                foregroundColor:
                    Colors.white, //set color text inside the button
              ),
              onPressed: () {
                setState(() {
                  artist.displayName = nameController.text;
                  artist.username = nameController.text;
                  artist.bio = bioController.text;
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainPage(
                              // artist: artist2,
                            )));
              },
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
