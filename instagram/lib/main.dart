import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '222016751 Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // Top Navbar
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/logo.png"),
                      const Row(
                        children: [
                          Icon(Icons.add_box, size: 30),
                          SizedBox(width: 20),
                          Icon(Icons.favorite, size: 30),
                          SizedBox(width: 20),
                          Icon(Icons.maps_ugc, size: 30),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Stories & Post Area
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 125,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/male/1.jpg",
                                    "sirac_yakut"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/female/1.jpg",
                                    "instagram_user"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/male/2.jpg",
                                    "talha_kaya"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/female/2.jpg",
                                    "ismail_kahraman"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/male/3.jpg",
                                    "furkan.bozaci"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/female/3.jpg",
                                    "baran_albayrak"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/male/1.jpg",
                                    "sirac_yakut"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/female/1.jpg",
                                    "instagram_user"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/male/2.jpg",
                                    "talha_kaya"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/female/2.jpg",
                                    "ismail_kahraman"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/male/3.jpg",
                                    "furkan.bozaci"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/female/3.jpg",
                                    "baran_albayrak"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/male/1.jpg",
                                    "sirac_yakut"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/female/1.jpg",
                                    "instagram_user"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/male/2.jpg",
                                    "talha_kaya"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/female/2.jpg",
                                    "ismail_kahraman"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/male/3.jpg",
                                    "furkan.bozaci"),
                                storyItem(
                                    "https://xsgames.co/randomusers/assets/avatars/female/3.jpg",
                                    "baran_albayrak"),
                              ],
                            ),
                          ),
                        ),
                        postItem(
                            "sirac_yakut",
                            "assets/images/bogaz_koprusu.jpg",
                            "https://xsgames.co/randomusers/assets/avatars/male/1.jpg"),
                        postItem("instagram_user", "assets/images/galata.webp",
                            "https://xsgames.co/randomusers/assets/avatars/female/1.jpg"),
                        postItem("talha_kaya", "assets/images/kiz_kulesi.webp",
                            "https://xsgames.co/randomusers/assets/avatars/male/2.jpg"),
                        postItem(
                            "ismail_kahraman",
                            "assets/images/anitkabir.jpg",
                            "https://xsgames.co/randomusers/assets/avatars/female/2.jpg"),
                        postItem(
                            "sirac_yakut",
                            "assets/images/bogaz_koprusu.jpg",
                            "https://xsgames.co/randomusers/assets/avatars/male/1.jpg"),
                        postItem("instagram_user", "assets/images/galata.webp",
                            "https://xsgames.co/randomusers/assets/avatars/female/1.jpg"),
                        postItem("talha_kaya", "assets/images/kiz_kulesi.webp",
                            "https://xsgames.co/randomusers/assets/avatars/male/2.jpg"),
                        postItem(
                            "ismail_kahraman",
                            "assets/images/anitkabir.jpg",
                            "https://xsgames.co/randomusers/assets/avatars/female/2.jpg"),
                        postItem(
                            "sirac_yakut",
                            "assets/images/bogaz_koprusu.jpg",
                            "https://xsgames.co/randomusers/assets/avatars/male/1.jpg"),
                        postItem("instagram_user", "assets/images/galata.webp",
                            "https://xsgames.co/randomusers/assets/avatars/female/1.jpg"),
                        postItem("talha_kaya", "assets/images/kiz_kulesi.webp",
                            "https://xsgames.co/randomusers/assets/avatars/male/2.jpg"),
                        postItem(
                            "ismail_kahraman",
                            "assets/images/anitkabir.jpg",
                            "https://xsgames.co/randomusers/assets/avatars/female/2.jpg"),
                      ],
                    ),
                  ),
                ),
              ),
              // Bottom Navbar
              const SizedBox(
                width: double.infinity,
                height: 55,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.home, size: 38),
                      Icon(Icons.search, size: 38),
                      Icon(Icons.explore, size: 38),
                      Icon(Icons.shopping_bag, size: 38),
                      Icon(Icons.person, size: 38),
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

  Column postItem(String userName, String imagePath, String avatarUrl) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 23,
                    backgroundImage: NetworkImage(avatarUrl),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    userName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Icon(Icons.more_horiz, size: 30),
            ],
          ),
        ),
        Image.asset(imagePath),
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite, size: 28),
                  SizedBox(width: 25),
                  Icon(Icons.mode_comment, size: 28),
                  SizedBox(width: 25),
                  Icon(Icons.send, size: 28),
                ],
              ),
              Icon(Icons.bookmark, size: 28),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://xsgames.co/randomusers/assets/avatars/male/3.jpg"),
                radius: 12,
              ),
              const SizedBox(width: 2),
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://xsgames.co/randomusers/assets/avatars/female/11.jpg"),
                radius: 12,
              ),
              const SizedBox(width: 2),
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://xsgames.co/randomusers/assets/avatars/female/12.jpg"),
                radius: 12,
              ),
              const SizedBox(width: 8),
              RichText(
                text: const TextSpan(
                  text: 'Liked by ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'kenozoere',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'others',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 5),
          child: Row(
            children: [
              Text(
                "Novomber 12",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget storyItem(String avatarUrl, String nickName) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Column(
        children: [
          Container(
            width: 95,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purple,
                  Colors.red,
                  Colors.orange,
                ],
              ),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(avatarUrl),
                radius: 43,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(nickName),
          ),
        ],
      ),
    );
  }
}
