import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // In ProfileScreen's build method
    return Scaffold(
      backgroundColor: Colors.blueGrey, // Add this line
      appBar: AppBar(title: const Text('Profile'), centerTitle: true),
      // In ProfileScreen's body
      body: Center(
        child: Container(
          width: 300,
          height: 450,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(51),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/profile_pic.png'),
              ),
              const SizedBox(height: 16),
              const Text(
                'Jane Doe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                '@janedoe',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              // After the user handle Text widget
              const SizedBox(height: 24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                // Inside the Row's children list
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Publicaciones',
                                      style: TextStyle(fontSize: 14, color: Colors.grey),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '536',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Seguidores',
                                      style: TextStyle(fontSize: 14, color: Colors.grey),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '5790',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Seguidos',
                                      style: TextStyle(fontSize: 14, color: Colors.grey),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '10',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],              ),
            ],
          ),
        ),
      ),
    );
  }
}
