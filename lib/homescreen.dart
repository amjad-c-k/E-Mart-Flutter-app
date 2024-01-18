import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Whatsapp'),
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
            ],
          ),
          actions: [
            const Icon(CupertinoIcons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_horiz_outlined),
              itemBuilder: (context) => <PopupMenuItem<int>>[
                const PopupMenuItem(
                  value: 1,
                  child: Text('New Group'),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text('Settings'),
                ),
                const PopupMenuItem(
                  value: 1,
                   child: Text('Logout'),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            const Text('Camera'),
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50),
                            image: const DecorationImage(
                              image: AssetImage('images/amjad.jpeg'),
                            ),
                          ),
                        ),
                        title: const Text(
                          'Amjad Khalil',
                          style: TextStyle(fontSize: 18),
                        ),
                        subtitle: const Text('Flutter seekh le bhai'),
                        trailing: const Text('04:38'),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'Recent Updates',
                              style: TextStyle(fontSize: 18),
                            ),
                            ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                    image: AssetImage('images/amjad.jpeg'),
                                  ),
                                  border: Border.all(
                                      color: Colors.tealAccent, width: 3),
                                ),
                              ),
                              title: const Text('Usama Tahir'),
                              subtitle: const Text('5m ago'),
                            ),
                          ],
                        );
                      } else if (index == 1) {
                        return Column(
                          children: [
                            const Text('Viewed Updates'),
                            ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  color: Colors.orange,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('images/amjad.jpeg'),
                                  ),
                                  //  border: Border.all(color: Colors.tealAccent,width: 3),
                                ),
                              ),
                              title: const Text('Usama Tahir'),
                              subtitle: const Text('35m ago'),
                            ),
                          ],
                        );
                      }
                      else {
                        return ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('images/amjad.jpeg'),
                              ),
                              //  border: Border.all(color: Colors.tealAccent,width: 3),
                            ),
                          ),
                          title: const Text('Usama Tahir'),
                          subtitle: const Text('35m ago'),
                        );
                      }
                    },
                  ),
                )
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50),
                            image: const DecorationImage(
                              image: AssetImage('images/amjad.jpeg'),
                            ),
                            // border: Border.all(color: Colors.teal,width: 3)
                          ),
                        ),
                        title: const Text('Brock'),
                        subtitle: index == 0
                            ? const Text('you missed a call')
                            : const Text('You missed video call'),
                        trailing: index == 0
                            ? const Icon(Icons.call)
                            : const Icon(CupertinoIcons.video_camera_solid),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
