import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Menu",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),),
              ),
              Container(
                margin: EdgeInsets.only(left:160,top: 10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade200
                ),
                child: Icon(Icons.settings_sharp,size: 40,),
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
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 80,
            width: 365,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3,
                ),
              ]
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: CircleAvatar(
                    foregroundImage: AssetImage(
                        'images/mozammel.jpg'),
                  ),
                ),
                SizedBox(width: 5,),
                Text("Mozammel hoshen Chowdhury",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
                SizedBox(width: 15,),
                IconButton(onPressed: (){}, icon: Icon(Icons.compare_arrows_rounded,size: 30,)),
                SizedBox(width: 5,),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down_circle_outlined,size: 30,)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 10),
            child: Text("Your Shortcuts",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
          ),

          Container(
            margin: EdgeInsets.only(bottom: 20),
              height: 70,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              color: Colors.transparent,
              child: ListView.builder(
                itemCount: 9,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Center(
                    child: Stack(
                      children: [Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)
                        ),
                      ),]
                    ),
                  );
                },
              )
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 10),
            child: Text("All Shortcuts",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
          ),
          Shortcuts(),
          Shortcuts(),
          Shortcuts(),
          Shortcuts(),
          Shortcuts(),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: 15),
            height: 35,
            width: 390,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey.shade300,
            ),
            child: Center(child: Text('See More',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)),
          ),
          SizedBox(height: 10,),
          Divider(color: Colors.grey,),
          SizedBox(height: 20,),
          Divider(color: Colors.grey,),
          SizedBox(height: 20,),
          Divider(color: Colors.grey,),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.only(left: 15),
            height: 35,
            width: 390,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey.shade300,
            ),
            child: Center(child: Text('Log Out',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)),
          ),
        ],
      ),
    );
  }
}



class Shortcuts extends StatelessWidget {
  const Shortcuts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0,top: 10),
      child: Row(
        children: [
          Container(
            height: 65,
            width: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2
                  )
                ]
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.groups_rounded,color: Colors.blue,),
                  SizedBox(height: 5,),
                  Text('Confirm',style: TextStyle(fontWeight: FontWeight.bold,),),
                ],
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            height: 65,
            width: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2
                  )
                ]
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_sharp,color: Colors.blue.shade900,),
                  SizedBox(height: 5,),
                  Text('Marketplace',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ShortcutsData {

  Icons? icon;
  String? name;

  ShortcutsData(this.icon,this.name);


}
