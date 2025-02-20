import 'package:flutter/material.dart';
import 'package:tugas_todo_list/widgets/bottom_navigation_bar.dart';
import 'package:tugas_todo_list/widgets/header.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // title: const Text('Profile Page'),
      ),
      body: Column(
        children: <Widget>[
          CustomHeader(title: 'Setting'),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              spacing: 20,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'My Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  spacing: 10,
                  children: [
                    // icon profile
                    const Icon(Icons.account_circle),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Name: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.deepPurple)),
                        const Text('John Doe'),
                      ],
                    ),
                  ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    // icon profile
                    const Icon(Icons.email),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Email: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.deepPurple)),
                        const Text('mail@mail.com'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
