import 'package:flutter/material.dart';

import 'Screens/model.dart';
import 'Screens/Home.dart';
import 'Screens/Request.dart';
import 'Screens/Video.dart';
import 'Screens/Market.dart';
import 'Screens/Notify.dart';
import 'Screens/Menu.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({
    Key? key,
  }) : super(key: key);

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed>
    with SingleTickerProviderStateMixin {
  // ignore: unused_field
  late TabController _tabController;

  late List<Newsfeed>? model = data;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: Colors.white,
                  title: const Text("facebook",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                  actions: [
                    Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade100),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              color: Colors.black,
                            ))),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade100),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: Colors.black,
                            ))),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade100),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset('images/messenger.png'))),
                  ],
                  floating: true,
                  snap: true,
                  pinned: true,
                  bottom: TabBar(
                    indicatorColor: Colors.blue,
                    labelColor: Colors.blueAccent,
                    unselectedLabelColor: Colors.grey.shade700,
                    tabs: [
                      const Icon(
                        Icons.home_outlined,
                        size: 30,
                      ),
                      const Icon(Icons.people_alt_outlined, size: 30),
                      const Icon(Icons.shop_outlined, size: 30),
                      const Icon(Icons.shopping_cart_outlined, size: 30),
                      const Icon(Icons.notifications_active_outlined, size: 30),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Stack(children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2),
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                image: AssetImage('images/mozammel.jpg'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 17.0, top: 17),
                            child: Container(
                              height: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white),
                                  image: const DecorationImage(
                                      image: AssetImage('images/menuu.png'))),
                            ),
                          )
                        ]),
                      )
                    ],
                  ),
                ),
              ];
            },
            body: Container(
              child: const TabBarView(
                children: [
                  Home(),
                  Request(),
                  Video(),
                  Market(),
                  Notify(),
                  Menu(),
                ],
              ),
            )),
      ),
    );
  }
}
