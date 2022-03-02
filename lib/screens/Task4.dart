import 'package:flutter/material.dart';

class Task4 extends StatefulWidget {
  const Task4({Key? key}) : super(key: key);

  @override
  State<Task4> createState() => _Task4State();
}

class _Task4State extends State<Task4> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Messages"),
      ),
      drawer: myDrawer(),
      body: ListView.separated(
        itemBuilder: ((context, index) => Card(
          child: ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage:
                      NetworkImage("https://source.unsplash.com/random/$index"),
                ),
                title: Text("Amanda $index"),
                subtitle: Text("Kristina $index"),
                trailing: const  Icon(Icons.arrow_drop_down),
          ),
        )
            ),itemCount: 10,
            separatorBuilder: (_,__)=> Divider(),
            

      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          myBottomNavigationBarItem(const Icon(Icons.home), "Home"),
          myBottomNavigationBarItem(const Icon(Icons.message), "Message"),
          myBottomNavigationBarItem(
              const Icon(Icons.video_collection_outlined), "Video"),
          myBottomNavigationBarItem(
              const Icon(Icons.notifications), "Notifications"),
        ],
      ),
    );
  }

  BottomNavigationBarItem myBottomNavigationBarItem(icon, text) =>
      BottomNavigationBarItem(
        icon: icon,
        label: text,
      );

  List color = [Colors.black, Colors.black, Colors.black];

  Drawer myDrawer() {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 30),
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.white,
                      child: Text(
                        "M",
                        style: TextStyle(fontSize: 50),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Mirjon Ramazonov",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      "mirxan2564@gmail.com",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Home",
                      style: TextStyle(
                        color: color[0],
                      ),
                    ),
                    leading: Icon(
                      Icons.home,
                      color: color[0],
                    ),
                    onTap: () {
                      setState(() {
                        color = [Colors.blue, Colors.black, Colors.black];
                      });
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Profile",
                      style: TextStyle(
                        color: color[1],
                      ),
                    ),
                    leading: Icon(
                      Icons.person,
                      color: color[1],
                    ),
                    onTap: () {
                      setState(() {
                        color = [Colors.black, Colors.blue, Colors.black];
                      });
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Aboutes",
                      style: TextStyle(
                        color: color[2],
                      ),
                    ),
                    leading: Icon(
                      Icons.people,
                      color: color[2],
                    ),
                    onTap: () {
                      setState(() {
                        color = [Colors.black, Colors.black, Colors.blue];
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
