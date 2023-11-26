import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      title: '222016751 Explore App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // Header
              const SizedBox(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome, Sirac",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            "Explore Istanbul City",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.sunny,
                            size: 30,
                            color: Color.fromRGBO(230, 140, 94, 1),
                          ),
                          SizedBox(width: 35),
                          Icon(
                            Icons.notifications,
                            size: 30,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Search
                      SizedBox(
                        width: double.infinity,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: deviceWidth - 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(243, 242, 243, 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 3,
                                  horizontal: 8,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color:
                                              Color.fromRGBO(147, 147, 147, 1),
                                        ),
                                        SizedBox(width: 15),
                                        Text(
                                          "Caferağa, Kadıköy",
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                147, 147, 147, 1),
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.tune,
                                      size: 23,
                                      color: Color.fromRGBO(230, 140, 94, 1),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      divider(),
                      // Story Area
                      Column(
                        children: [
                          titleSection("Top Locations"),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  storyItem(),
                                  storyItem(),
                                  storyItem(),
                                  storyItem(),
                                  storyItem(),
                                  storyItem(),
                                  storyItem(),
                                  storyItem(),
                                  storyItem(),
                                  storyItem(),
                                  storyItem(),
                                  storyItem(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      divider(),
                      // Near You
                      Column(
                        children: [
                          titleSection("Near You"),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                children: [
                                  placeItem(
                                      title: "Anitkabir",
                                      kilometers: 9,
                                      price: 14,
                                      imagePath: "assets/images/anitkabir.jpg"),
                                  placeItem(
                                      title: "Bogaz Koprusu",
                                      kilometers: 15,
                                      price: 22,
                                      imagePath:
                                          "assets/images/bogaz_koprusu.jpg"),
                                  placeItem(
                                      title: "Galata",
                                      kilometers: 22,
                                      price: 123,
                                      imagePath: "assets/images/galata.webp"),
                                  placeItem(
                                      title: "Kız Kulesi",
                                      kilometers: 34,
                                      price: 55,
                                      imagePath:
                                          "assets/images/kiz_kulesi.webp"),
                                  placeItem(
                                      title: "Anitkabir",
                                      kilometers: 9,
                                      price: 14,
                                      imagePath: "assets/images/anitkabir.jpg"),
                                  placeItem(
                                      title: "Bogaz Koprusu",
                                      kilometers: 15,
                                      price: 22,
                                      imagePath:
                                          "assets/images/bogaz_koprusu.jpg"),
                                  placeItem(
                                      title: "Galata",
                                      kilometers: 22,
                                      price: 123,
                                      imagePath: "assets/images/galata.webp"),
                                  placeItem(
                                      title: "Kız Kulesi",
                                      kilometers: 34,
                                      price: 55,
                                      imagePath:
                                          "assets/images/kiz_kulesi.webp"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      divider(),
                      // Suggestions
                      Column(
                        children: [
                          titleSection("Suggestions"),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                children: [
                                  placeItem(
                                      title: "Kız Kulesi",
                                      kilometers: 9,
                                      price: 14,
                                      imagePath:
                                          "assets/images/kiz_kulesi.webp"),
                                  placeItem(
                                      title: "Bogaz Koprusu",
                                      kilometers: 15,
                                      price: 22,
                                      imagePath:
                                          "assets/images/bogaz_koprusu.jpg"),
                                  placeItem(
                                      title: "Galata",
                                      kilometers: 22,
                                      price: 123,
                                      imagePath: "assets/images/galata.webp"),
                                  placeItem(
                                      title: "Anitkabir",
                                      kilometers: 34,
                                      price: 55,
                                      imagePath: "assets/images/anitkabir.jpg"),
                                  placeItem(
                                      title: "Anitkabir",
                                      kilometers: 9,
                                      price: 14,
                                      imagePath: "assets/images/anitkabir.jpg"),
                                  placeItem(
                                      title: "Bogaz Koprusu",
                                      kilometers: 15,
                                      price: 22,
                                      imagePath:
                                          "assets/images/bogaz_koprusu.jpg"),
                                  placeItem(
                                      title: "Galata",
                                      kilometers: 22,
                                      price: 123,
                                      imagePath: "assets/images/galata.webp"),
                                  placeItem(
                                      title: "Kız Kulesi",
                                      kilometers: 34,
                                      price: 55,
                                      imagePath:
                                          "assets/images/kiz_kulesi.webp"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      divider(),
                      // Top Rated
                      Column(
                        children: [
                          titleSection("Top Rated"),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                children: [
                                  placeItem(
                                      title: "Galata",
                                      kilometers: 9,
                                      price: 14,
                                      imagePath: "assets/images/galata.webp"),
                                  placeItem(
                                      title: "Bogaz Koprusu",
                                      kilometers: 15,
                                      price: 22,
                                      imagePath:
                                          "assets/images/bogaz_koprusu.jpg"),
                                  placeItem(
                                      title: "Anitkabir",
                                      kilometers: 22,
                                      price: 123,
                                      imagePath: "assets/images/anitkabir.jpg"),
                                  placeItem(
                                      title: "Kız Kulesi",
                                      kilometers: 34,
                                      price: 55,
                                      imagePath:
                                          "assets/images/kiz_kulesi.webp"),
                                  placeItem(
                                      title: "Anitkabir",
                                      kilometers: 9,
                                      price: 14,
                                      imagePath: "assets/images/anitkabir.jpg"),
                                  placeItem(
                                      title: "Bogaz Koprusu",
                                      kilometers: 15,
                                      price: 22,
                                      imagePath:
                                          "assets/images/bogaz_koprusu.jpg"),
                                  placeItem(
                                      title: "Galata",
                                      kilometers: 22,
                                      price: 123,
                                      imagePath: "assets/images/galata.webp"),
                                  placeItem(
                                      title: "Kız Kulesi",
                                      kilometers: 34,
                                      price: 55,
                                      imagePath:
                                          "assets/images/kiz_kulesi.webp"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Bottom Navigation
              SizedBox(
                width: double.infinity,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      menuItem(title: "Home", icon: Icons.home, isActive: true),
                      menuItem(
                          title: "Moments",
                          icon: Icons.groups,
                          isActive: false),
                      // Book Button
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.maps_ugc,
                            size: 42,
                            color: Color.fromRGBO(234, 138, 95, 1),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Book",
                            style: TextStyle(
                              color: Color.fromRGBO(234, 138, 95, 1),
                            ),
                          ),
                        ],
                      ),
                      menuItem(
                          title: "Chat", icon: Icons.forum, isActive: false),
                      menuItem(
                          title: "Profile",
                          icon: Icons.person,
                          isActive: false),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget placeItem(
      {required String title,
      required int kilometers,
      required int price,
      required String imagePath}) {
    return Container(
      width: 200,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imagePath,
              width: 200,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 15,
                        color: Color.fromRGBO(179, 177, 179, 1),
                      ),
                      Text(
                        "$kilometers from you.",
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color.fromRGBO(179, 177, 179, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(226, 137, 102, 1),
                ),
                child: Text(
                  "₺ $price",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget menuItem(
      {required String title, required IconData icon, required bool isActive}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 35,
          color: isActive
              ? Colors.black87
              : const Color.fromRGBO(179, 177, 179, 1),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            color: isActive
                ? Colors.black87
                : const Color.fromRGBO(179, 177, 179, 1),
          ),
        ),
      ],
    );
  }

  Widget titleSection(String title) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color.fromRGBO(121, 119, 121, 1),
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),
          ),
          const Text(
            "View All",
            style: TextStyle(
              color: Color.fromRGBO(186, 186, 186, 1),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget storyItem() {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 152, 0, 1),
              Color.fromRGBO(160, 96, 0, 1),
              Color.fromRGBO(231, 80, 69, 1),
            ],
          ),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://xsgames.co/randomusers/assets/avatars/male/${Random().nextInt(50) + 1}.jpg",
                ),
                radius: 45,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget divider() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Color.fromRGBO(233, 231, 233, 1),
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
