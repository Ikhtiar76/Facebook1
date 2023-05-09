import 'package:flutter/material.dart';

class Notify extends StatelessWidget {
  const Notify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 300,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15,),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200
                      ),
                      child: Icon(Icons.search_rounded,size: 40,),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("New",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0,top: 50),
                  child: Text("Something went Wrong",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160.0,top: 10),
                  child: Text("Please try again later",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,),),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Earlier",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
