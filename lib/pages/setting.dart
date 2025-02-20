import 'package:flutter/material.dart';
import 'package:tugas_todo_list/widgets/bottom_navigation_bar.dart';
import 'package:tugas_todo_list/widgets/header.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // title: const Text('Setting Page'),
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
                    'Change Password',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(),
                    labelText: 'Old Password',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'New Password',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Confirm New Password',
                  ),
                ),
                FilledButton(
                  onPressed: () {},
                  child: const Text('Change Password'),
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
