import 'package:flutter/material.dart';
import 'package:resume_flutter_app/assets/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homeBody(),
    );
  }

  Widget homeBody() {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Image.asset(
                    'images/home_Screen.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 50,
                  right: 50,
                  child: Container(
                    width: 100,
                    height: 560,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: FutureBuilder<String>(
                      future: loadText(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          if (snapshot.hasError) {
                            return Center(
                                child: Text('Error: ${snapshot.error}'));
                          } else if (snapshot.hasData) {
                            return SingleChildScrollView(
                              child: Text(
                                snapshot.data ?? '',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            );
                          }
                        }
                        return Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'images/1.png',
                            height: 180,
                            width: 180,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(width: 200),
                        Expanded(
                          child: Image.asset(
                            'images/1.png',
                            height: 180,
                            width: 180,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
