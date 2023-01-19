import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';
class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int _activeStepIndex = 0;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: AppBar(
            centerTitle: true,
            title: Text(
              'Create Job Request',
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
            ),
            backgroundColor: Color.fromRGBO(25, 44, 73, 1),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 20,
              ),
              onPressed: () {
                if (_activeStepIndex == 0) {
                  return;
                }
                _activeStepIndex -= 1;
                setState(() {});
              },
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {

                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ))
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 10,
          unselectedFontSize: 10,

          // iconSize: 20,
          selectedItemColor: Color.fromRGBO(245, 86, 70, 1),
          unselectedItemColor: Color.fromRGBO(25, 44, 73, 1),
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
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
        body:Center(
          child: Container(
            child:Text("hello thinQ24"

            ),
        ),
        )
    );

  }
}




