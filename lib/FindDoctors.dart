import 'package:flutter/material.dart';

class FindDoctors extends StatefulWidget {
  const FindDoctors({super.key});

  @override
  State<FindDoctors> createState() => _FindDoctorsState();
}

class _FindDoctorsState extends State<FindDoctors> {
  final List<String> doctorsName = <String>[
    'Dr M Arumkumar',
    'Dr G R Sathish',
    'Dr M J vinoth',
    'Dr M J Sathish',
    'Dr M J Sathish',
    'Dr M J Sathish',
  ];
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
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: doctorsName.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(top: 24, left: 16, right: 16),
            height: 100,
            decoration: BoxDecoration(
          color: Color.fromARGB(255, 5, 49, 54),
          borderRadius: BorderRadius.circular(10),
        ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    doctorsImage[index],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    doctorsName[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 40,
                   width: 60,
                    color: Colors.pink[200],
                    child: Center(
                      child: Text("Appoint"),
                    ),
                  )
                ],
              ),
            ),
            // Center(child: Text('Entry ${entries[index]}')),
          );
        },
      ),
    );
  }
}
