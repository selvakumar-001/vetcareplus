// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:vetcareplus/FindDoctors.dart';
import 'package:vetcareplus/doctors.dart';

class home2 extends StatefulWidget {
  const home2({super.key});
  
  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {
  final List<String> doctorsImage = <String>[
    'image/doctors/doc1.jpg',
    'image/doctors/doc2.jpg',
    'image/doctors/doc3.jpg',
    'image/doctors/doc3.jpg',
    'image/doctors/doc3.jpg',
    'image/doctors/doc3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Text(
            "Find A Doctor",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
          ),
          Card(
            color: Colors.grey[100],
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => FindDoctors(),
                ),
              ),
              child: Container(
                height: 100,
                width: 500,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('image/finddoctor.png'),
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          Divider(),
          Text(
            "Buy Medicine",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
          ),
          Card(
            color: Colors.grey[100],
            child: Container(
              height: 100,
              width: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/buymedicine.png'),
                ),
                // shape: BoxShape.circle,
              ),
            ),
          ),
          Divider(),
          Text(
            "Top Doctors",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  color: Colors.grey[100],
                  child: Container(
                    // padding: EdgeInsets.all(16.0),
                    height: 200,
                    width: 200,
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'image/doctors/doc1.jpg',
                  width: 300.0, // adjust the width as needed
                  height: 100.0, // adjust the height as needed
                ),
                SizedBox(height: 10.0), // spacing between image and text
                Text(
                  'Dr M ArunKumar',
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  
                ),
                Divider(),
                Card(
                  color: Colors.grey[100],
                  child: Container(
                    // padding: EdgeInsets.all(16.0),
                    height: 200,
                    width: 200,
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'image/doctors/doc2.jpg',
                  width: 300.0, // adjust the width as needed
                  height: 100.0, // adjust the height as needed
                ),
                SizedBox(height: 10.0), // spacing between image and text
                Text(
                  'Dr G R Sathish',
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  
                ),
                Divider(),
                Card(
                  color: Colors.grey[100],
                  child: Container(
                    // padding: EdgeInsets.all(16.0),
                    height: 200,
                    width: 200,
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'image/doctors/doc3.jpg',
                  width: 300.0, // adjust the width as needed
                  height: 100.0, // adjust the height as needed
                ),
                SizedBox(height: 10.0), // spacing between image and text
                Text(
                  'Dr Vinoth M J',
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  
                ),
                Divider(),
              ],
            ),
          ),
          Divider(),
          Text(
            "Near Veterinary Hospital",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  color: Colors.grey[100],
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('image/hospitals/hos1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Divider(),
                Card(
                  color: Colors.grey[100],
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('image/hospitals/hos2.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Divider(),
                Card(
                  color: Colors.grey[100],
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('image/hospitals/hos3.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
