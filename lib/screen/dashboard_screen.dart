import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../login.dart';
import 'dashboardcreatejob.dart';

// void main() => runApp(myapp());
//
// class myapp extends StatelessWidget {
//   const myapp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: dashboard(),
//     );
//   }
// }

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final bottomnavgation = [
    createjob(),
    fyxt(),
    createjob(),
    fyxt(),
    createjob(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 10,
        unselectedFontSize: 10,

        // iconSize: 20,
        selectedItemColor: Color.fromRGBO(245, 86, 70, 1),
        unselectedItemColor: Color.fromRGBO(25, 44, 73, 1),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message_rounded,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt_outlined,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: bottomnavgation.elementAt(_selectedIndex),
      ),
    );
  }
}
