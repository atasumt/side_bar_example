// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool denem = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MultiLevelDrawer(
          backgroundColor: Colors.white,
          rippleColor: Colors.white,
          subMenuBackgroundColor: Colors.grey.shade100,
          header: SizedBox(
            height: MediaQuery.of(context).size.width * 0.35,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 70,
                    child: Image.network(
                        'https://media-exp1.licdn.com/dms/image/C5603AQEssJZgvX7LgQ/profile-displayphoto-shrink_800_800/0/1600291704843?e=1649894400&v=beta&t=b88e6GdVyPgU7nxbpStVsk6J3wW3gH8OH4sizxN1QWY'),
                  ),
                  const SizedBox(height: 10),
                  const Text('Umut Ataş'),
                ],
              ),
            ),
          ),
          children: [
            MLMenuItem(
                content: Row(
                  children: const [
                    SizedBox(width: 10),
                    Text('Profil Bilgilerim'),
                  ],
                ),
                onClick: () {},
                leading: const Icon(Icons.person),
                trailing: const Icon(Icons.arrow_right),
                subMenuItems: [
                  MLSubmenu(
                      submenuContent: const Text('Seçenek 1'), onClick: () {}),
                  MLSubmenu(
                      submenuContent: const Text('Seçenek 2'), onClick: () {}),
                  MLSubmenu(
                      submenuContent: const Text('Seçenek 3'), onClick: () {})
                ]),
            MLMenuItem(
                content: Row(
                  children: const [
                    SizedBox(width: 10),
                    Text('Ayarlar'),
                  ],
                ),
                onClick: () {},
                leading: const Icon(Icons.settings),
                trailing: const Icon(Icons.arrow_right),
                subMenuItems: [
                  MLSubmenu(
                      submenuContent: const Text('Seçenek 1'), onClick: () {}),
                ]),
            MLMenuItem(
              content: Row(
                children: const [
                  SizedBox(width: 10),
                  Text('Bildirimler'),
                ],
              ),
              onClick: () {},
              leading: const Icon(Icons.notifications),
              trailing: denem == true ? const Icon(Icons.arrow_right) : null,
            ),
            MLMenuItem(
                content: Row(
                  children: const [
                    SizedBox(width: 10),
                    Text('Ödemeler'),
                  ],
                ),
                onClick: () {},
                leading: const Icon(Icons.settings),
                trailing: const Icon(Icons.arrow_right),
                subMenuItems: [
                  MLSubmenu(
                      submenuContent: const Text('Seçenek 1'), onClick: () {}),
                  MLSubmenu(
                      submenuContent: const Text('Seçenek 2'), onClick: () {}),
                  MLSubmenu(
                      submenuContent: const Text('Seçenek 3'), onClick: () {}),
                  MLSubmenu(
                      submenuContent: const Text('Seçenek 4'), onClick: () {}),
                ]),
          ]),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Menu Kontrol',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.amber,
                Colors.red,
              ]),
        ),
      ),
    );
  }
}
