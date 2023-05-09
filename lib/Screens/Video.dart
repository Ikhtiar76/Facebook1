import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  const Video({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Column(
        children: [
          Container(
            height: 100,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Watch",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:160,top: 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200
                      ),
                      child: Icon(Icons.person_rounded,size: 40,),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15,top: 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200
                      ),
                      child: Icon(Icons.search_rounded,size: 40,),
                    )
                  ],
                ),
                TabBar(
                  isScrollable: true,
                  physics: BouncingScrollPhysics(),
                    indicator: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue.shade100),
                  labelColor: Colors.blueAccent,
                  unselectedLabelColor: Colors.grey.shade700,
                  overlayColor: MaterialStatePropertyAll(Colors.blue),
                  tabs: [
                  Text('For You',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Live',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Gaming',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Reels',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Following',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Saved',style: TextStyle(fontWeight: FontWeight.bold),),
                  ]
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}