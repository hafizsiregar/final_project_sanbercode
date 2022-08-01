import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 245,
                decoration: BoxDecoration(
                  color: Color(0xff130160),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Hi, Hafiz',
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.notifications_none_rounded,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 12),
                          const CircleAvatar(
                            backgroundImage: AssetImage('images/apiss.jpeg'),
                            radius: 25,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Find your dream job\nhere!',
                        style: GoogleFonts.dmSans(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintText: 'search',
                            labelStyle: GoogleFonts.dmSans(
                                fontSize: 12, color: const Color(0xffA0A7B1)),
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Find Your Job',
                  style: GoogleFonts.dmSans(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 170,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xffAFECFE)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('images/headhunting.png'),
                          const SizedBox(height: 14),
                          Text(
                            '44.5k',
                            style: GoogleFonts.dmSans(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0D0140)),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Remote Job',
                            style: GoogleFonts.dmSans(
                                fontSize: 14, color: Color(0xff0D0140)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 75,
                          width: 155,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: const Color(0xffBEAFFE)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '68.8k',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff0D0140)),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Full Time',
                                style: GoogleFonts.dmSans(
                                    fontSize: 14, color: Color(0xff0D0140)),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 75,
                          width: 155,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: const Color(0xffFFD6AD)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '38.9k',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff0D0140)),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Full Time',
                                style: GoogleFonts.dmSans(
                                    fontSize: 14, color: Color(0xff0D0140)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Text(
                  'Recent Job List',
                  style: GoogleFonts.dmSans(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff150B3D)),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  height: 155,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset('images/apple.png'),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Product Designer',
                                style: GoogleFonts.dmSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff150B3D)),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Google inc - California, USA',
                                style: GoogleFonts.dmSans(
                                    fontSize: 12, color: Color(0xff524B6B)),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.bookmark_outline_rounded,
                              color: Colors.black)
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '15K/Mo',
                        style: GoogleFonts.dmSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff150B3D),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 25,
                            width: 107,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffCBC9D4)),
                                child: Center(
                                  child: Text('Senior Designer',
                                  style: GoogleFonts.dmSans(
                                    fontSize: 10,
                                    color: Color(0xff524B6B),
                                  ),),
                                ),
                          ),
                          Container(
                            height: 25,
                            width: 107,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffCBC9D4)),
                                child: Center(
                                  child: Text('Full Time',
                                  style: GoogleFonts.dmSans(
                                    fontSize: 10,
                                    color: Color(0xff524B6B),
                                  ),),
                                ),
                          ),
                          Container(
                            height: 25,
                            width: 107,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffFF6B2C)),
                                child: Center(
                                  child: Text('Apply',
                                  style: GoogleFonts.dmSans(
                                    fontSize: 10,
                                    color: Color(0xff524B6B),
                                  ),),
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
