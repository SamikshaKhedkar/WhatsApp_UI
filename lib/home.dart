import 'package:flutter/material.dart';
import 'package:data/details.dart';

class Home extends StatefulWidget {
  static const String id = 'Home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext contex) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text('WhatsApp'),
             bottom: const TabBar(
                 tabs: [
                   Tab(
                     child: Icon(Icons.camera_alt),
                   ),
                   Tab(
                     child: Text('Chats'),
                   ),

                   Tab(
                     child: Text('Status'),
                   ),

                   Tab(
                     child: Text('Calls'),
                   ),



                 ]
             ),
            actions:  [
             Icon(Icons.search),
              SizedBox(width: 10,),
              PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (context,) => [
                    const PopupMenuItem(
                         value: 1,
                        child: Text('New group')
                    ),

                    const PopupMenuItem(
                        value: 2,
                        child: Text('Setting')
                    ),

                    const PopupMenuItem(
                        value: 3,
                        child: Text('log out')
                    ),

                  ]
              ),
              SizedBox(width: 10,)
            ],
          ),
          body:  TabBarView(
              children: [
                Text('Camera'),

                ListView.builder(
                  itemCount: 100,
                    itemBuilder: (context, index)
                        {
                          return const ListTile(
                            leading:  CircleAvatar(
                              backgroundImage: NetworkImage('https://www.pexels.com/photo/woman-in-yellow-sleeveless-top-1204678/'),

                            ),
                            title: Text('Samiksha Khedkar'),
                            subtitle: Text('Where are you???'),
                            trailing: Text('11:00 Am'),
                          );
                        }
                ),


                ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index)
                    {
                      return ListTile(
                        leading:   Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                            color: Colors.green,
                              width: 3,
                            )
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://www.pexels.com/photo/woman-in-yellow-sleeveless-top-1204678/'),

                          ),
                        ),
                        title: const Text('Samiksha Khedkar'),
                        subtitle: Text('23 sec ago'),

                      );
                    }
                ),



                ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index)
                    {
                      return ListTile(
                        leading:  const CircleAvatar(
                          backgroundImage: NetworkImage('https://www.pexels.com/photo/woman-in-yellow-sleeveless-top-1204678/'),

                        ),
                        title: const Text('Samiksha Khedkar'),
                        subtitle: Text(index/2==0 ? 'you have audio missed call' : 'you have video missed call'),
                        trailing: Icon( index/2==0 ? Icons.phone : Icons.video_call),
                      );
                    }
                ),

              ]

          ),

        )

    );
  }
}
