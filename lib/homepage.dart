import 'package:camp_yellow_clan_flutter_ui/widgets/section_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.house,
                color: Colors.white,
                size: 40,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.stars_sharp,
                color: Colors.white,
                size: 40,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.leaderboard,
                color: Colors.white,
                size: 40,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people_outline_sharp,
                color: Colors.white,
                size: 40,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
                color: Colors.white,
                size: 40,
              ),
              label: ""),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 15,
                right: 15,
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange, width: 4),
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: Image.asset('lib/images/goku.jpeg').image,
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Opacity(
                            opacity: 0.5,
                            child: Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: Colors.orange, width: 4),
                                    left: BorderSide(
                                        color: Colors.orange, width: 4),
                                    right: BorderSide(
                                        color: Colors.orange, width: 4),
                                  ),
                                  // border: Border.all(color: Colors.yellow, width: 4),
                                  color: Colors.black),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 30, horizontal: 16),
                            child: Text(
                              "Clan Name: Lorem Ipsum",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 16.0, top: 80.0),
                            child: Text(
                              "28 members, 5 online",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    height: 50,
                    thickness: 4,
                    color: Colors.white,
                  ),
                  getSectionHeader("Achievement"),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            getSectionContentText("Current League"),
                            const SizedBox(
                              width: 180,
                            ),
                            const Icon(
                              Icons.shield,
                              size: 100,
                              color: Colors.orange,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            getSectionContentText("League Ranking"),
                            const SizedBox(
                              width: 180,
                            ),
                            const Text(
                              '11th',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 50,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            getSectionContentText("Experience"),
                            const SizedBox(
                              width: 220,
                            ),
                            const Text(
                              '2000 xp',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            getSectionContentText("# of wins"),
                            const SizedBox(
                              width: 240,
                            ),
                            const Text(
                              '3',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 50,
                    thickness: 4,
                    color: Colors.white,
                  ),
                  getSectionHeader("Past featured performances"),
                  const SizedBox(
                    height: 30,
                  ),
                  getPastFeaturedMembers('lib/images/girl.jpeg',
                      "Priya In International\nDebating League"),
                  const SizedBox(
                    height: 30,
                  ),
                  getPastFeaturedMembers('lib/images/girl.jpeg',
                      "Akshay in Global\nQuizzing Finals"),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'see more',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const Divider(
                    height: 50,
                    thickness: 4,
                    color: Colors.white,
                  ),
                  getSectionHeader("Live clan activities on platform"),
                  const SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 170,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image:
                                    Image.asset('lib/images/live.jpeg').image)),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 90),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Live trading championship',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 170,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image:
                                    Image.asset('lib/images/live.jpeg').image)),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 90),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Treasure hunt',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'see more',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const Divider(
                    height: 50,
                    thickness: 4,
                    color: Colors.white,
                  ),
                  getSectionHeader("Clan discussion"),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: getSectionContentText("General thread:"),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '15 unread messages',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: getSectionContentText(
                        "(live) Anyone enthu for trading league..."),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '10 unread messages',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: getSectionContentText(
                        "(live) Anyone enthu for trading league..."),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '10 unread messages',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'see more',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const Divider(
                    height: 50,
                    thickness: 4,
                    color: Colors.white,
                  ),
                  getSectionHeader("Clan members"),
                  const SizedBox(
                    height: 30,
                  ),
                  getClanMembers(
                      'lib/images/profile2.jpeg', 'Lorem ipsum - Clan head'),
                  const SizedBox(
                    height: 30,
                  ),
                  getClanMembers('lib/images/profile3.jpeg',
                      'Lorem ipsum - Debating sensei'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'see more',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
