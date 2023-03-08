import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black87,
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(120),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.white70),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.list,
                      color: Colors.black87,
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(120),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.white70),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/img1.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Sunny Leon",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "@Chintu",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink.shade200),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      iconColor: Colors.grey,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Enter Name...',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.save)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Followed By",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3.5,
                  ),
                  Container(
                    width: 200,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          backgroundImage: AssetImage("assets/img2.jpg"),
                          radius: 25,
                        ),
                        Positioned(
                          left: 25,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            backgroundImage: AssetImage("assets/img3.jpg"),
                            radius: 25,
                          ),
                        ),
                        Positioned(
                          left: 50,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            backgroundImage: AssetImage("assets/img4.jpg"),
                            radius: 25,
                          ),
                        ),
                        Positioned(
                          left: 75,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            backgroundImage: AssetImage("assets/img5.jpg"),
                            radius: 25,
                          ),
                        ),
                        Positioned(
                          left: 100,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            backgroundImage: AssetImage("assets/img6.jpg"),
                            radius: 25,
                          ),
                        ),
                        Positioned(
                          left: 125,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            backgroundImage: AssetImage("assets/img7.png"),
                            radius: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
