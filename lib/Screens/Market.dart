import 'package:flutter/material.dart';

class Market extends StatelessWidget {
  const Market({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("Marketplace",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:90,top: 10),
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
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 35,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300,
                    ),
                    child: Center(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.edit_calendar),
                        SizedBox(width: 5,),
                        Text('Sell',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 35,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300,
                    ),
                    child: Center(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.list_outlined),
                        SizedBox(width: 5,),
                        Text('Categories',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('New for You',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('See all',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}