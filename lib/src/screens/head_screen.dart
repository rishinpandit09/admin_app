import 'package:ausum_app/src/widgets/head_screen/all_controller_record.dart';
import 'package:ausum_app/src/widgets/head_screen/all_gate_record.dart';
import 'package:ausum_app/src/widgets/head_screen/all_person_record.dart';
import 'package:ausum_app/src/widgets/person_list_of_admin.dart';
import 'package:ausum_app/src/widgets/profile_record.dart';
import 'package:flutter/material.dart';

class HeadScreen extends StatefulWidget {
  HeadScreen({Key? key}) : super(key: key);

  @override
  State<HeadScreen> createState() => _HeadScreenState();
}

class _HeadScreenState extends State<HeadScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    Text("Gates"),
    Text("Controller"),
    Text("All Records"),
    Text("Profile Page"),
  ];
  final List _pages = [
    AllGateRecord(),
    AllControllerRecord(),
    AllPersonRecord(),
    ProfileScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _widgetOptions.elementAt(_selectedIndex),
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return const [
              PopupMenuItem<int>(
                value: 0,
                child: Text("Add Gate"),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text("Add Controller"),
              ),
              PopupMenuItem<int>(
                value: 2,
                child: Text("Logout"),
              ),
            ];
          }, onSelected: (value) {
            if (value == 0) {
              Navigator.pushNamed(context, '/add_gate');
            } else if (value == 1) {
              Navigator.pushNamed(context, '/add_controller');
            } else if (value == 2) {
              Navigator.pop(context);
            }
          }),
        ],
      ),
      body: SingleChildScrollView(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.door_back_door_outlined),
            label: "All Gates",
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: "All Controller",
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
