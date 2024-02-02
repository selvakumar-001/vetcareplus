import 'package:flutter/material.dart';
import 'package:vetcareplus/setting.dart';
import 'package:vetcareplus/home.dart';
import 'package:vetcareplus/login.dart';

class doctorHome extends StatefulWidget {
  const doctorHome({super.key});

  @override
  State<doctorHome> createState() => _doctorHomeState();
}

class _doctorHomeState extends State<doctorHome> {
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
      body: Column(
        children: [
          Text("AppointMents",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 10),
          Table(
            border: TableBorder.all(),
            columnWidths: const <int, TableColumnWidth>{
              0: FlexColumnWidth(),
              1: FlexColumnWidth(),
              2: FlexColumnWidth(),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: <TableRow>[
              TableRow(
                children: <Widget>[
                  Center(
                    child: Container(
                        height: 32,
                        child: Text(
                          "Owner Name",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                  ),
                  Center(
                    child: TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Container(
                          height: 32,
                          child: Text(
                            "Pet Type",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )),
                    ),
                  ),
                  Center(
                    child: Container(
                        height: 32,
                        child: Text(
                          "Response",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                  ),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                children: <Widget>[
                  Center(
                    child: Container(
                        height: 32,
                        child: Text(
                          "Saranraj R",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                  ),
                  Center(
                    child: Container(
                        height: 32,
                        child: Text(
                          "Dog",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                  ),
                  Center(
                    child: Container(
                        height: 32,
                        child: FloatingActionButton(
                          child: Text("Accept"),
                          onPressed: () {},
                        )),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                // <-- SEE HERE
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 5, 49, 54)),
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
          ],
        ),
      ),
    );
  }
}
