import 'package:flutter/material.dart';


class Request extends StatelessWidget {
  const Request({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("Friends",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15,),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200
                  ),
                  child:  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Scaffold(
                            appBar: AppBar(
                              backgroundColor: Colors.white,
                              iconTheme: IconThemeData(color: Colors.black),
                              elevation: 0,
                              title: Container(
                                margin: EdgeInsets.only(right: 10,top: 10),
                                height: 35,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey.shade200
                                ),
                                child: Center(
                                  child: TextField(
                                    onTap: (){},
                                    decoration: InputDecoration(
                                        hintText: 'Search for friends',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        )
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            body: Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(top: BorderSide(color: Colors.grey.shade400))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: Column(
                                  children: [
                                    SizedBox(child: Image.asset('images/search.png'),
                                      height: 50,
                                      width: 50,
                                    ),
                                    Text('Find friends',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                                    RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(text: 'Search for a friend or someone you may know to connect\n'
                                                '                            with them on Facebook',
                                                style: TextStyle(fontSize: 10,color: Colors.black))
                                          ]
                                    ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },));
                      },
                      child: Icon(Icons.search_rounded,size: 40,)),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade200,
                  ),
                  child:  Center(child: InkWell(
                    onTap: (){
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          context: context, builder: (context){
                        return Container(
                          height: 300,
                          child: Center(
                            child: Text('No Suggestions',style: TextStyle(color: Colors.grey,fontSize: 35)),
                          ),
                        );
                      });
                    },
                      child: Text('Suggestions',style: TextStyle(fontWeight: FontWeight.bold),))),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade200,
                  ),
                  child:  Center(child: InkWell(
                      onTap: (){
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            context: context, builder: (context){
                          return Container(
                            height: 300,
                            child: Center(
                              child: Text('No Friends',style: TextStyle(color: Colors.grey,fontSize: 35)),
                            ),
                          );
                        });
                      },
                      child: Text('Your Friends',style: TextStyle(fontWeight: FontWeight.bold),))),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const Divider(
              height: 15,
              color: Colors.grey,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const SizedBox(width: 20,),
                const Text('Friend Requests',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                const SizedBox(width: 180,),
                TextButton(
                  child: const Text("See all"),
                onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Scaffold(
                        appBar: AppBar(
                          elevation: 0,
                          title: const Text('Requests',style: TextStyle(fontSize: 20,color: Colors.black),),
                          actions: [
                            IconButton(onPressed: (){
                              showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  context: context, builder: (context){
                                return Container(
                                  height: 50,
                                  child: const ListTile(
                                    leading: Icon(Icons.person_add_outlined,color: Colors.black,),
                                    title: Text('View sent requests',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 15)),
                                  ),
                                );
                              });
                            }, icon: Image.asset('images/dots.png'))
                          ],
                          backgroundColor: Colors.white,
                          iconTheme: const IconThemeData(color: Colors.black),
                        ),
                        body: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(top: BorderSide(color: Colors.grey.shade400))
                            ),
                            child: ListView(
                              children: [
                                Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20.0),
                                        child: Text('Friend requests',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                      ),
                                      TextButton(onPressed: (){
                                        showModalBottomSheet(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                            context: context, builder: (context){
                                          return Container(
                                            height: 200,
                                            child: Column(
                                              children: [
                                                ListTile(
                                                  leading: Icon(Icons.multiple_stop,color: Colors.black,),
                                                  title: Text('Default',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 15),),
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                                const ListTile(
                                                  leading: Icon(Icons.upload_file_outlined,color: Colors.black),
                                                  title: Text('Newest request first',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 15)),
                                                ),
                                                const ListTile(
                                                  leading: Icon(Icons.download_outlined,color: Colors.black),
                                                  title: Text('Oldest request first',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 15)),
                                                ),
                                              ],
                                            ),
                                          );
                                        }
                                        );
                                      }, child: const Text('Sort',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.blue),)),
                                    ],
                                  ),
                                  People(),
                                  People(),
                                  People(),
                                  People(),
                                  People(),
                                  People(),
                                  People(),
                                  People(),
                                  People(),
                                  People(),
                                  People(),
                                ],
                              ),]
                            )
                        ),
                      );
                    },));
                },
                  style: const ButtonStyle(
                    textStyle: MaterialStatePropertyAll(TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.blue),)
                  ),
                ),
              ],
            ),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
            const People (),
          ],
        ),
      ),
    );
  }
}





class People extends StatefulWidget {
  const People({Key? key}) : super(key: key);

  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {


  bool data1 = false;
  bool data2 = false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          const SizedBox(
            height: 60,
            width: 60,
            child: CircleAvatar(
              foregroundImage: AssetImage(
                  'images/user.png'),
            ),
          ),
          const SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ahsan Habib Pair',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              const SizedBox(height: 15,),
              Row(
                children: [
                 TextButton(
                   onPressed: (){
                     setState(() {
                       data1 = ! data1;
                     });
                   },
                     child: data1 ? const Text('Accepted',style: TextStyle(color: Colors.black),):const Text('Confirm'),
                 style: data1 ? const ButtonStyle(
                   fixedSize: MaterialStatePropertyAll(Size.fromWidth(140)),
                 ): const ButtonStyle(
                     foregroundColor: MaterialStatePropertyAll(Colors.white),
                     backgroundColor: MaterialStatePropertyAll(Colors.blue),
                     fixedSize: MaterialStatePropertyAll(Size.fromWidth(140))
                 )),
                  const SizedBox(width: 5,),
                  TextButton(
                      onPressed: (){
                        setState(() {
                          data2 = ! data2;
                        });
                      },
                      child: data2 ? const Text('Deleted',style: TextStyle(color: Colors.black),):const Text('Delete'),
                      style: data2 ? const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size.fromWidth(140)),
                      ): ButtonStyle(
                          foregroundColor: const MaterialStatePropertyAll(Colors.black),
                          backgroundColor: MaterialStatePropertyAll(Colors.grey.shade300),
                          fixedSize: const MaterialStatePropertyAll(Size.fromWidth(140))
                      )),
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}
















