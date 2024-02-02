import 'package:flutter/material.dart';
import 'package:vetcareplus/login.dart';
import 'package:vetcareplus/login2.dart';

class userModes extends StatelessWidget {
  const userModes({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 49, 54),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 25),
          Image.asset(
            "image/vetcare+.png",
            height: 300,
            width: 300.0,
          ),
          Row(
            children: [
              Expanded(
                child: Card(
                  color: Colors.grey[100],
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => login(),
                      ),
                    ),
                    child: Container(
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('image/customerlogo.png'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: Colors.grey[100],
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => login2(),
                      ),
                    ),
                    child: Container(
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('image/doctorlogo.png'),
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // ignore: prefer_const_constructors
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Text(
                  "Pet Owner",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                SizedBox(width: 130),
                Text(
                  "Doctor",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
