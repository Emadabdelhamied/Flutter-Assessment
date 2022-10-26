import 'package:flutter/material.dart';

import '../../core/components/empty_screen.dart';
import '../../core/utils/color_utils.dart';
import '../../core/utils/icons.dart';
import '../chat/presentation/pages/chat_screen.dart';
import '../home/presentation/pages/home_screen.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ChatScreen(),
    EmptyScreen(),
    EmptyScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(homeIcon),
              color: _selectedIndex == 0 ? primary : Colors.black,
            ),
            label: "",
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(favoriteIcon),
              color: _selectedIndex == 1 ? primary : Colors.black,
            ),
            label: "",
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(walletIcon),
              color: _selectedIndex == 2 ? primary : Colors.black,
            ),
            label: "",
            // backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(profileIcon),
              color: _selectedIndex == 3 ? primary : Colors.black,
            ),
            label: "",
            // backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primary,
        showSelectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}
