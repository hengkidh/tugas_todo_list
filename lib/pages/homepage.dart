import 'package:flutter/material.dart';
import 'package:tugas_todo_list/pages/setting.dart';
import 'package:tugas_todo_list/widgets/bottom_navigation_bar.dart';
import 'package:tugas_todo_list/widgets/header.dart';

import 'profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            CustomHeader(
              title: 'HomePage',
            ),
            Container(
              color: const Color.fromARGB(255, 224, 206, 255),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  spacing: 10,
                  children: [
                    // Profile button
                    FilledButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ));
                      },
                      child: const Text(' Go to Profile Page'),
                    ),

                    // Setting button
                    FilledButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SettingPage(),
                        ));
                      },
                      child: const Text('Go to Setting Page'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'My Todo List',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Checkbox(
                              value: false,
                              onChanged: (bool? value) {},
                            ),
                            title: Text('Todo ${index + 1}'),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // add todo list
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      // bottom navigation bar
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
