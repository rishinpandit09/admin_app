import 'package:ausum_app/src/widgets/all_record_list.dart';
import 'package:ausum_app/src/widgets/entry_alert_box.dart';
import 'package:ausum_app/src/widgets/entry_tile.dart';
import 'package:ausum_app/src/widgets/person_list_of_admin.dart';
import 'package:ausum_app/src/widgets/profile_record.dart';
import 'package:flutter/material.dart';

class DisplayScreen extends StatefulWidget {
  DisplayScreen({Key? key}) : super(key: key);

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    Text("Gate Access"),
    Text("All Records"),
    Text("Profile Page")
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _onTapScreen(int index) {
    switch (index) {
      case 0:
        return AdminAllowedList();
      case 1:
        return AllRecord();
      case 2:
        return ProfileScreen();
      default:
        return const Text("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _widgetOptions.elementAt(_selectedIndex),
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.logout,
              size: 35,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: _onTapScreen(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inbox),
            label: "All Records",
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.grey,
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 0,
      ),
    );
  }
}
