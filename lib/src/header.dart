import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 23, 69, 107),
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Home',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          SizedBox(
            width: 31,
          ),
          Text(
            'Services',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          SizedBox(
            width: 31,
          ),
          Text(
            'Hire Developers',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          SizedBox(
            width: 31,
          ),
          Text(
            'Company',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          SizedBox(
            width: 31,
          ),
          Text(
            'Portfolio',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          SizedBox(
            width: 31,
          ),
          Text(
            'Blog',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          SizedBox(
            width: 31,
          ),
          Text(
            'Contact Us',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          SizedBox(
            width: 100,
          ),
        ],
      ),
    );
  }
}
