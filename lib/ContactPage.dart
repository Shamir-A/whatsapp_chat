import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Select contacts",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            Text(
              "267 contacts",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Padding(
                padding: const EdgeInsets.only(top: 12, right: 6),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: PopupMenuButton(
              iconSize: 28,
              itemBuilder: (context) => [
                const PopupMenuItem(
                    value: 1,
                    child: Text(
                      "Invite a friend",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )),
                const PopupMenuItem(
                    value: 2,
                    child: Text(
                      "Contacts",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )),
                const PopupMenuItem(
                    value: 3,
                    child: Text(
                      "Refresh",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )),
                const PopupMenuItem(
                    value: 4,
                    child: Text(
                      "Help",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 12, right: 8),
        child: ListView(
          children: const [
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.group,
                  color: Colors.white,
                ),
                backgroundColor: Color(0xFF25D366),
              ),
              title: Text(
                "New group",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.person_add,
                  color: Colors.white,
                ),
                backgroundColor: Color(0xFF25D366),
              ),
              title: Text(
                "New contact",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.groups,
                  color: Colors.white,
                ),
                backgroundColor: Color(0xFF25D366),
              ),
              title: Text(
                "New community",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Contacts on WhatsApp",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/images/barney stinson.jpg"),),
              ),
              title: Text("Barney Stinson"),
              subtitle: Text("SUITTTS"),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/images/rayee.jpg"),),
              ),
              title: Text("Rayeesa Uzbek"),
              subtitle: Text("MashaAllah"),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/images/sodierboy.jpg"),),
              ),
              title: Text("Soldier Boy"),
              subtitle: Text("Hey there,I am using WhatsApp"),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/images/asif.jpg"),),
              ),
              title: Text("Asif Ali"),
              subtitle: Text("Busy"),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/images/sinan.jpg"),),
              ),
              title: Text("Sinan Qtr"),
              subtitle: Text("Friendly,but i'm not your friend tho."),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/images/patric.jpg"),),
              ),
              title: Text("Patrick Bateman"),
              subtitle: Text("Say My Name"),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/images/hamza.jpg"),),
              ),
              title: Text("Hamza Elcns"),
              subtitle: Text("MashaAllah"),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/images/fida.jpg"),),
              ),
              title: Text("Fida BBA"),
              subtitle: Text("Peace"),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/images/ragner lothbrok.jpg"),),
              ),
              title: Text("Ranger Lothbrok"),
              subtitle: Text("Let's travel to the west"),
            ),
          ],

        ),
      ),
    );
  }
}
