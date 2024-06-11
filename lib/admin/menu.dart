import 'package:etovsolution/admin/surat_suara_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:provider/provider.dart';
import '../admin/dashboard_page.dart';
import '../admin/profil_page.dart';

class MenuAdmin extends StatefulWidget {
  @override
  _MenuAdminState createState() => _MenuAdminState();
}

class _MenuAdminState extends State<MenuAdmin> {
  int _selectedIndex = 0;
  // int? _notificationCount;

  final List<Widget> _pages = [
    DashboardPage(),
    SuratSuaraPage(),
    ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    // final authState = Provider.of<AuthState>(context);
    // setState(() {
    //   _notificationCount = authState.notifCount;
    // });

    // print('ini auth ${authState.notifCount}');
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        height: 50.0,
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.how_to_vote_outlined,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
        ],
        color: Colors.red,
        buttonBackgroundColor: Colors.red,
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
