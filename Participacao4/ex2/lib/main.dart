import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BottomAppBarDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class BottomAppBarDemo extends StatefulWidget {
  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  int _selectedIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onFabPressed() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Message'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('Mail'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomAppBar with FAB'),
      ),
      body: Center(
        child: Text(
          'TAB: $_selectedIndex',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onFabPressed,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onTabSelected,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'This',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.layers),
              label: 'Is',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Bottom',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info, color: Colors.red),
              label: 'Bar',
            ),
          ],
        ),
      ),
    );
  }
}
