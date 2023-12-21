import 'package:flutter/material.dart';
import 'package:cv2/Skills.dart';
import 'package:cv2/educational_background.dart';
import 'package:cv2/personal_info.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Curriculm Vitae',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/home_bg.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'images/avatar.jpg',
                  ),
                  radius: 70.0,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              const Text(
                "Name:",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text(
                "Michael E. Miranda III",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              const Text(
                "Position:",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text(
                "IT",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              const Row(
                children: [
                  Icon(Icons.mail,
                      color: Colors.white), // Replace with your desired icon
                  SizedBox(
                      width: 8.0), // Add some space between the icon and text
                  Text(
                    'hxhmichaelhxh@gmail.com',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(Icons.call,
                      color: Colors.white), // Replace with your desired icon
                  SizedBox(
                      width: 8.0), // Add some space between the icon and text
                  Text(
                    '09461925147',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PersonalInfo(),
                          ));
                        },
                        icon: const Icon(Icons.info, color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const EducationalBackground(),
                          ));
                        },
                        icon: const Icon(Icons.school, color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Skills(),
                          ));
                        },
                        icon: const Icon(Icons.settings, color: Colors.white)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
