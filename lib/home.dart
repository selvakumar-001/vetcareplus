import 'package:flutter/material.dart';
import 'package:vetcareplus/doctors.dart';
import 'package:vetcareplus/setting.dart';
import 'package:vetcareplus/home2.dart';
import 'package:vetcareplus/login.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    home2(),
    doctors(),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 3: School',
    ),
    Text(
      'Index 4: Home',
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:Color.fromARGB(255, 36, 85, 90),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        toolbarHeight: 90,
        backgroundColor: Color.fromARGB(255, 5, 49, 54),
        elevation: 0,
        centerTitle: true,
        title: Image.asset("image/vetcare+.png", width: 200.0),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: _widgetOptions[_selectedIndex],
      drawer: Drawer(
        child: ListView(children: [
          const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: Color.fromARGB(255, 5, 49, 54)),
              accountName: Text(
                "Selvakumar C",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "selvakumar@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person_2_outlined),
              )),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => home())),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => setting())),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => login())),
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip_outlined),
            title: Text('Privacy'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => login())),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => login())),
          ),
        ]),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromARGB(255, 5, 49, 54),
            primaryColor: Colors.white,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.grey))),
        child: BottomNavigationBar(
          elevation: 0,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.pink[200],
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_services),
              label: 'Doctors',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.medication_sharp,
              ),
              label: 'Medicines',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety),
              label: 'HelthCare',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          // backgroundColor: Color(0xff07a467),
        ),
      ),
    );
  }
}
