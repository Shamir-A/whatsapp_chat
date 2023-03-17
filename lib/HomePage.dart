import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_chat/ChatsWidget.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                appBarTheme: const AppBarTheme(color: Color(0xFF075E54))),
            useInheritedMediaQuery: true,
            home:  HomePage(),
            debugShowCheckedModeBanner: false,
            // routes: {
            //       "/" : (context) => Chats(),
            // },
          )));
}

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            elevation: 1,
            title: const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "WhatsApp",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(top: 12, right: 20),
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 28,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12, right: 6),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: PopupMenuButton(
                  iconSize: 28,
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text(
                        "New Group",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text(
                        "New Broadcast",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 3,
                      child: Text(
                        "Linked devices",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 4,
                      child: Text(
                        "Starred Messages",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 5,
                      child: Text(
                        "Payments",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 5,
                      child: Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: const Color(0xFF075E54),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  Container(
                    width: 25,
                    child: const Tab(
                      icon: Icon(Icons.groups),
                    ),
                  ),
                  Container(
                    width: 80,
                    child: Tab(
                        child: Row(
                      children: [
                        Text("Chats"),
                        SizedBox(width: 8),
                        Container(
                          alignment: Alignment.center,
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            "10",
                            style: TextStyle(
                                color: Color(0xFF075E54), fontSize: 14),
                          ),
                        ),
                      ],
                    )),
                  ),
                  Container(
                    width: 80,
                    child: const Tab(
                      child: Text("Status"),
                    ),
                  ),
                  Container(
                    width: 80,
                    child: const Tab(
                      child: Text("Calls"),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
                child: TabBarView(
              children: [
                // tab1 Communities
                Container(color: Colors.black),
                // tab2 ChatWidget
                ChatWidget(),
                // tab3 StatusWidget
                Container(color: Colors.black),
                // tab4 CallWidget
                Container(color: Colors.black),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
