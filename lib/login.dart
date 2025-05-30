import 'package:areeb/homePage.dart';
import 'package:areeb/classes/list.dart';
import 'package:flutter/material.dart';
import 'classes/Artist.dart';
import 'signup.dart';

bool isSecure = true;

Map<String, Artist> users = {
  "jano28": artist1,
  "mayaa04": artist2,
  "reno00": artist3
};

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Color(0xFFFBF6F2), //  #fbf6f2
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: const TextStyle(color: Color(0xFF373737)),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 141, 180, 121), width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 141, 180, 121), width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: passwordController,
                  obscureText: isSecure,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(color: Color(0xFF373737)),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 141, 180, 121), width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 141, 180, 121), width: 2),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isSecure = !isSecure;
                        });
                      },
                      icon: const Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Artist user = users[usernameController.text]!;
                    if (user.username == usernameController.text &&
                        user.password == passwordController.text) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainApp()),
                      );
                      // او اي شي ابغاه يسويه ، زي .. يودينا الهوم او شي
                    } 
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 141, 180, 121),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                  ),
                  child: const Text("Login",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupPage()),
                    );
                  },
                  child: const Text(
                    "Create an account",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                const Image(
                  image: AssetImage("assets/areeb.png"),
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
