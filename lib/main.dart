import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const FirstPage(),
        "/profile": (context) => const Myprofile(),
        "/myapps": (context) => const Myapps(),
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 229, 236),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[400],
        title: const Text("Augustaroの館"),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: _screenSize.width,
                child: Image.asset("images/kante.jpg"),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                height: 50,
                child: Row(
                  children: [Image.asset("images/title.png")],
                ),
              ),
              Container(
                height: 40,
              ),
              const Text("お知らせ"),
              Container(
                padding: const EdgeInsets.all(30),
                child: const Text(
                    " Once upon a time, there was a girl named Explosion.\n She was always fascinated by fireworks and loved to watch them light up the sky. \n One day, she decided to create her own fireworks display. She spent hours preparing and setting up the fireworks, and when it was finally time to light them up, she was so excited that she forgot to take a step back. As soon as she lit the fuse, there was a loud explosion and she was thrown back by the force of it. \n She wasn’t hurt, but she learned an important lesson that day - always take a step back before lighting fireworks!"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text(
                "Who is AugusTaro?",
                style: TextStyle(fontSize: 24, color: Colors.white),
              )),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/profile");
                },
                child: const Text(
                  'Profile',
                  style: TextStyle(decoration: TextDecoration.underline),
                )),
          ),
          ListTile(
            leading: const Icon(Icons.app_registration_rounded),
            title: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/myapps");
                },
                child: const Text(
                  'Myapps',
                  style: TextStyle(decoration: TextDecoration.underline),
                )),
          ),
          const ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
          ),
        ],
      ),
    );
  }
}

class Myprofile extends StatelessWidget {
  const Myprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Augustaroのプロフ"),
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                    child: Image.asset(
                  "images/myicon.jpg",
                  fit: BoxFit.contain,
                )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => const SecondPage()));
                    },
                    child: const Text("戻る")),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Myapps extends StatelessWidget {
  const Myapps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Augustaroのアプリ"),
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                const Text("カミングスーン！！！"),
                SizedBox(
                  width: 20,
                  child: Image.asset("images/girl.jpg"),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => const SecondPage()));
                    },
                    child: const Text("戻る")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
