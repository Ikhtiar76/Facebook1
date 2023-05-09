import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool Like = false;
  bool Like2 = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 75,
            width: MediaQuery
                .of(context)
                .size
                .width,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Colors.grey))
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10),
              child: Row(
                children: [
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      foregroundImage: AssetImage(
                          'images/mozammel.jpg'),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    height: 40,
                    width: 280,
                    child: TextField(
                        decoration: InputDecoration(
                          hintText: "What's on your mind?",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Colors.black54),),
                          filled: true,
                          fillColor: Colors.white,)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: IconButton(onPressed: () {},
                        icon: Image.asset("images/picture.png")),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
              height: 180,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              color: Colors.white,
              child: ListView.builder(
                itemCount: 9,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Center(
                    child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            height: 160,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage(
                                    "images/moza.jpg"),
                                fit: BoxFit.cover,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 14,top: 5),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.blue, width: 3),
                            ),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.transparent, width: 3)
                              ),
                              child: CircleAvatar(
                                foregroundImage: AssetImage(
                                    "images/mozammel.jpg"),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 130.0, left: 10),
                            child: Text("Mozammel Hoshen ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 12),),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 140.0, left: 10),
                            child: Text("Chowdhury", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 12),),
                          )
                        ]
                    ),
                  );
                },
              )
          ),
          const SizedBox(height: 10,),
          Container(
            height: 459,
            width: MediaQuery
                .of(context)
                .size
                .width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                          foregroundImage: AssetImage(
                              "images/mozammel.jpg"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Mozammel Hoshen Chowdhury',
                          style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.bold,),),
                        Text('his profile picture.', style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),),
                        Text('9 December 2022', style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 27.0, left: 4),
                      child: Text('updated', style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 45.0, left: 10),
                      child: IconButton(onPressed: () {},
                        icon: Image.asset('images/dots.png'),),
                    ),
                  ],
                ),
                Container(
                  height: 260,
                  width: 260,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.grey.shade500, width: 3),
                  ),
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Colors.white, width: 3)
                    ),
                    child: const SizedBox(
                      height: 240,
                      width: 240,
                      child: CircleAvatar(
                        foregroundImage: AssetImage(
                            "images/mozammel.jpg"),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 320.0, top: 10),
                  child: Text("Comment", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey,
                      decoration: TextDecoration.underline),),
                ),

                const Divider(
                  height: 20,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          IconButton(onPressed: () {
                            setState(() {
                              Like2 = !Like2;
                            });
                          },
                            icon: Like2
                                ? (const Icon(
                                Icons.thumb_up, color: Colors.blue))
                                : (const Icon(
                                Icons.thumb_up_alt_outlined,
                                color: Colors.blue)),),
                          Text('Like', style: Like2 ? const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue) : const TextStyle(
                              fontWeight: FontWeight.bold))
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: () {},
                              icon: const Icon(Icons.mode_comment,
                                  color: Colors.grey)),
                          const Text('Comment', style: TextStyle(
                              fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: () {},
                              icon: const Icon(
                                Icons.share, color: Colors.grey,)),
                          const Text('Share', style: TextStyle(
                              fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 459,
            width: MediaQuery
                .of(context)
                .size
                .width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                          foregroundImage: AssetImage(
                              "images/mozammel.jpg"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Mozammel Hoshen Chowdhury',
                          style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.bold,),),
                        Text('his cover photo.', style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),),
                        Text('9 December 2022', style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 27.0, left: 4),
                      child: Text('updated', style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 45.0, left: 10),
                      child: IconButton(onPressed: () {},
                        icon: Image.asset('images/dots.png'),),
                    ),
                  ],
                ),
                Container(
                  height: 260,
                  width: 260,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.grey.shade500, width: 3),
                  ),
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Colors.white, width: 3)
                    ),
                    child: CircleAvatar(
                      foregroundImage: AssetImage(
                          "images/mcover.jpg"),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 320.0, top: 10),
                  child: Text("Comment", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey,
                      decoration: TextDecoration.underline),),
                ),

                const Divider(
                  height: 20,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          IconButton(onPressed: () {
                            setState(() {
                              Like = !Like;
                            });
                          },
                            icon: Like
                                ? (const Icon(
                                Icons.thumb_up, color: Colors.blue))
                                : (const Icon(
                                Icons.thumb_up_alt_outlined,
                                color: Colors.blue)),),
                          Text('Like', style: Like ? const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue) : const TextStyle(
                              fontWeight: FontWeight.bold))
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: () {},
                              icon: const Icon(Icons.mode_comment,
                                  color: Colors.grey)),
                          const Text('Comment', style: TextStyle(
                              fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: () {},
                              icon: const Icon(
                                Icons.share, color: Colors.grey,)),
                          const Text('Share', style: TextStyle(
                              fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

