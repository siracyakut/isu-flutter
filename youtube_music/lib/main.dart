import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '222016751 YT Music',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(33, 33, 33, 1),
        body: SafeArea(
          child: Column(
            children: [
              // Top Navbar & Categories
              Container(
                width: double.infinity,
                height: 135,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 88, 37, 64),
                      Color.fromARGB(255, 119, 87, 63),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    // Logo & Navbar
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/logo.png", width: 40),
                              const SizedBox(width: 5),
                              const Text(
                                "Music",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(Icons.cast, color: Colors.white, size: 25),
                              SizedBox(width: 25),
                              Icon(Icons.search, color: Colors.white, size: 25),
                              SizedBox(width: 25),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://xsgames.co/randomusers/assets/avatars/male/1.jpg"),
                                radius: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Categories
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(
                        top: 15,
                        bottom: 15,
                        left: 15,
                        right: 7,
                      ),
                      child: Row(
                        children: [
                          categoryItem("Energize"),
                          categoryItem("Workout"),
                          categoryItem("Feel Good"),
                          categoryItem("Relaxation"),
                          categoryItem("Chill Out"),
                          categoryItem("Rock"),
                          categoryItem("Pop"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Container
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Start Radio From A Song
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 15,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "START RADIO FROM A SONG",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 192, 192, 192),
                                  fontSize: 17,
                                ),
                              ),
                              // Quick Picks
                              playTitle("Quick Picks"),
                              // Quick Pick Samples
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  children: [
                                    singleMusic(
                                        "Moments",
                                        "PaulWetz & Dillistone",
                                        "assets/images/cover1.webp"),
                                    singleMusic("Warrior", "Oscar & The Wolf",
                                        "assets/images/cover2.jpg"),
                                    singleMusic("Cymatics", "Nigel Stanford",
                                        "assets/images/cover3.jpg"),
                                    singleMusic("Burning Son", "Monolink",
                                        "assets/images/cover4.jpg"),
                                    singleMusic(
                                        "Moments",
                                        "PaulWetz & Dillistone",
                                        "assets/images/cover1.webp"),
                                    singleMusic("Warrior", "Oscar & The Wolf",
                                        "assets/images/cover2.jpg"),
                                    singleMusic("Cymatics", "Nigel Stanford",
                                        "assets/images/cover3.jpg"),
                                    singleMusic("Burning Son", "Monolink",
                                        "assets/images/cover4.jpg"),
                                  ],
                                ),
                              ),
                              // Forgotten Favorites
                              playTitle("Forgotten Favorites"),
                            ],
                          ),
                        ),
                        // Forgotten Favorites Samples
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 15),
                            child: Row(
                              children: [
                                forgottenMusic(
                                    "Moments",
                                    "PaulWetz & Dillistone",
                                    "assets/images/cover1.webp"),
                                forgottenMusic("Warrior", "Oscar & The Wolf",
                                    "assets/images/cover2.jpg"),
                                forgottenMusic("Cymatics", "Nigel Stanford",
                                    "assets/images/cover3.jpg"),
                                forgottenMusic("Burning Son", "Monolink",
                                    "assets/images/cover4.jpg"),
                                forgottenMusic(
                                    "Moments",
                                    "PaulWetz & Dillistone",
                                    "assets/images/cover1.webp"),
                                forgottenMusic("Warrior", "Oscar & The Wolf",
                                    "assets/images/cover2.jpg"),
                                forgottenMusic("Cymatics", "Nigel Stanford",
                                    "assets/images/cover3.jpg"),
                                forgottenMusic("Burning Son", "Monolink",
                                    "assets/images/cover4.jpg"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Bottom Navbar
              SizedBox(
                width: double.infinity,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    menuItem("Home", Icons.home),
                    menuItem("Samples", Icons.play_circle),
                    menuItem("Explore", Icons.explore),
                    menuItem("Library", Icons.library_music),
                    menuItem("Upgrade", Icons.upgrade),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget forgottenMusic(String songName, String artistName, String coverPath) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Image.asset(
            coverPath,
            width: 200,
          ),
          const SizedBox(height: 5),
          Text(
            songName,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            artistName,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget playTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 192, 192, 192),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 4,
            ),
            child: Text(
              "Play All",
              style: TextStyle(
                color: Color.fromARGB(255, 192, 192, 192),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget singleMusic(String songName, String artistName, String coverPath) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                coverPath,
                width: 110,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    songName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    artistName,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Icon(
            Icons.more_vert,
            size: 25,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget menuItem(String name, IconData icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 35,
        ),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 11,
          ),
        ),
      ],
    );
  }

  Widget categoryItem(String categoryName) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Colors.white30,
        border: Border.all(color: Colors.white54),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: Text(
          categoryName,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
