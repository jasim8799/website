import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netcoreinfo/src/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _controller;
  double pixels = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        pixels = _controller.position.pixels;
      });
    });
  }

  List<String> imageList = [
    "assets/images/info1.jpeg",
    "assets/images/info2.jpeg",
    "assets/images/info3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [
              Container(
                height: 50,
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(image: AssetImage('assets/images/logo.png')),
                    Padding(
                      padding: const EdgeInsets.only(left: 600),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.mail,
                                size: 32,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "corporate@netcoreinfo.com",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "hr@netcoreinfo.com",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          size: 32,
                        ),
                        Column(
                          children: [
                            Text(
                              "+91-9953045521",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "+91-9267952538",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Header(),
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 500,
                        width: MediaQuery.of(context).size.width,
                        color: Color.fromARGB(255, 12, 34, 51),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: CarouselSlider(
                                  items: imageList
                                      .map((e) => ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Stack(
                                              fit: StackFit.expand,
                                              children: [
                                                Image.asset(
                                                  e,
                                                  height: 100,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ))
                                      .toList(),
                                  options: CarouselOptions(
                                      autoPlay: true,
                                      enlargeCenterPage: true,
                                      height: 450)),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                height: 700,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12)),
                      width: 1000,
                      height: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 15, bottom: 15, left: 15),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "ABOUT US",
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Netcoreinfo launched in 2009; is a specialized Software and Web Development Company based in New Delhi and Noida that offers complete customized IT solution to help and boost your business in creating optimum exposure inthe web and IT word with the vision of brand development and success in its relative fields.",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Netcoreinfo,is one of the most reputable and trust worthly IT services Provider company having expertise on multiple domains",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  width: 150,
                                  height: 50,
                                  color: Color.fromARGB(255, 11, 36, 56),
                                  child: TextButton(
                                      onPressed: () {
                                        print("Welcome to Netcoreinfo");
                                      },
                                      child: Text(
                                        "Read More",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 270,
                                  height: 135,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.grey),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Text(
                                        "SYSTEM ANALYSIS AND DESIGN",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 270,
                                  height: 135,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.grey),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Text(
                                        "SOURCE CODE REPOSITORY AND ADMINISTRATION",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 270,
                                  height: 135,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.grey),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Text(
                                        "DATABASE MANAGEMENT",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 270,
                                  height: 135,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.grey),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Text(
                                        "WEB DEVELOPMENT AND DESIGN",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          width: 400,
                          height: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, bottom: 12, left: 15, right: 0),
                                child: Text(
                                  "We Lead from the Front",
                                  style: TextStyle(
                                      fontSize: 34,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                child: Text(
                                  "Netcoreinfo launched in 2009; is a specialized Software and Web Development Company based in New Delhi and Noida that offers complete customized IT solution to help and boost your business in creating optimum exposure inthe web and IT word with the vision of brand development and success in its relative fields.",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      wordSpacing: 3),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "Netcoreinfo,is one of the most reputable and trust worthly IT services Provider company having expertise on multiple domains",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      wordSpacing: 3),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                color: Color.fromARGB(255, 33, 59, 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Image(image: AssetImage("assets/images/ads.jpeg")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Image(image: AssetImage("assets/images/logo.png")),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 550,
                child: Column(
                  children: [
                    SizedBox(
                      height: 44,
                    ),
                    Text(
                      "OUR MISSION & VISION",
                      style:
                          TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 550,
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 26, 52, 73)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(
                              child: Text(
                                "OUR MISSION Company defining to contribute to forward-looking transformation of a society through software development, Over 10 years to work,we have developed a range of solutions and gained sample experiance in the service we offers: Custom Software development,E-commerce Solution Development,Web Development, Legacy Application Reconstruction, Project Recovery,Consulting , and Quality Assurance",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    letterSpacing: 2,
                                    wordSpacing: 5,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 550,
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 19, 41, 59)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "OUR VISION is to achieve 100% customer satisfaction by delivering quality product and services at an affordable cost. Our forward vision is to become an entity and stive in technology based corporate solution,capable of demanding unconditional response from the targeted niche. We also belived that for our scope of improvisation-sky is the limit and we are alwas ready to take our achievement to next level. We are growing and would always like to remain on the growing streak.",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 2,
                                    wordSpacing: 5,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                color: Color.fromARGB(255, 33, 60, 82),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "OPERATIONS ABROAD",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 5,
                          color: Colors.white),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 12, right: 150, left: 150),
                      child: Text(
                        "Netcoreinfo closely works from establishing business setup at Africa and Middle East market.Targeted companies are jointly involved in proving various system and solution to different economics sectors and are considered as one of the fastest growing and leading solution provider company.",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 850,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "10",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "_____",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Country",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "342",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "_____",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Running Projects",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "60",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "_____",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Employees",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "WHAT OUR CUSTOMERS SAYS",
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 750,
                      height: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 580),
                            child: Text(
                              "Business Man",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "We have been working with Netcoreinfo since 2009 on Several IT Projects.When we decided to develop an iPhone app to our clients use we turned again to Netcore.We are already complete three with Netcore and delighted with services.",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 12, left: 400, right: 0, bottom: 5),
                            child: Text(
                              "Rajiv Verma",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 260,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.phone,
                              size: 30,
                            ),
                            Column(
                              children: [
                                Text(
                                  "+91-9953045521",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "+91-9953045521",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.mail,
                              size: 30,
                            ),
                            Column(
                              children: [
                                Text(
                                  "corporate@netcoreinfo.com",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "hr@netcoreinfo.com",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Copyright@2004-2021.All Rights Reserved.netcoreinfo.com",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Become a Partner| FAQ|",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.facebook,
                              size: 31,
                              color: Color.fromARGB(255, 17, 36, 51),
                            ),
                            Icon(
                              Icons.whatsapp,
                              size: 31,
                              color: Color.fromARGB(255, 17, 36, 51),
                            ),
                            Icon(
                              Icons.chrome_reader_mode_sharp,
                              size: 31,
                              color: Color.fromARGB(255, 17, 36, 51),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 200,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 30, 57, 80)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 9,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 9,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 9,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 9,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 9,
                                          )
                                        ],
                                      ),
                                      Text(
                                        "Rate",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    child: Text(
                                      "4.9outof5.0by1508clients on over10800+projects",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
