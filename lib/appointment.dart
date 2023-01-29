// Tip: tap on the down arrow to format the code.

import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';

import 'completed.dart';
import 'package:page_transition/page_transition.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter_dropdown_search/flutter_dropdown_search.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: AppointmentPage()),
      ),
    ),
  );
}

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  _AppointmentPage createState() => _AppointmentPage();
}

class _AppointmentPage extends State<AppointmentPage> {
  bool isFinished = false;
  bool _clicked = false;
  bool _clicked2 = false;
  bool _clicked3 = false;
  bool _clicked4 = false;
  DateTime _dateTime = DateTime.now();
  TextEditingController nameController = TextEditingController();
  TextEditingController nameController2 = TextEditingController();
  TextEditingController nameController3 = TextEditingController();
  TextEditingController _controller = TextEditingController();
  List<String> items = [
    "--Others--",
    "Alam Avenue",
    "Ampang Point",
    "Bahau",
    "Bandar Baru Ampang",
    "Bandar Baru Bangi",
    "Bandar Baru Klang",
    "Bandar Baru Nilai",
    "Bandar Baru Sg Buloh",
    "Bandar Bukit Tinggi",
    "Bandar Mahkota Cheras",
    "Bandar Sri Damansara",
    "Bandar Sri Permaisuri",
    "Bandar Sri Petaling",
    "Bangsar Shopping Complex",
    "Banting",
    "Damansara Jaya",
    "Damansara Utama",
    "Dataran Wangsa Melawati",
    "First Avenue",
    "IOI Boulevard",
    "IOI Resort City",
    "Jalan Bukit Bintang",
    "Jalan Ipoh",
    "Jalan Niaga",
    "Jalan Pasar",
    "Jalan Raja Laut",
    "Jalan Stesen",
    "Jalan Tengku Ampuan Zabedah",
    "Jalan Tun H.S. Lee",
    "Jenjarom",
    "Jinjang Utara",
    "KLCC",
    "Kajang",
    "Kampung Baru Sg Buloh",
    "Kelana Jaya",
    "Kenanga Wholesale City",
    "Kepong",
    "Kota Damansara",
    "Kota Kemuning",
    "Kuala Lumpur Main",
    "Kuala Pilah",
    "Laman Seri",
    "Menara Shell",
    "Meru",
    "Mid Valley",
    "New Town Petaling Jaya",
    "Overseas Union Garden",
    "Pandan Indah",
    "Paradigm",
    "Pasar Borong Selayang",
    "Persiaran Sultan Ibrahim",
    "Plaza Damas 3, Sri Hartamas",
    "Plaza OSK",
    "Port Klang",
    "Putrajaya Precint 8",
    "Rantau",
    "Rawang",
    "Section 14",
    "Segambut",
    "Seremban",
    "Seremban 2",
    "Seri Kembangan",
    "Setapak",
    "Setia Alam",
    "Subang Jaya",
    "Sungai Pelek",
    "Sungai Way Subang",
    "Taipan, Senawang",
    "Taman Connaught",
    "Taman Indah",
    "Taman Megah",
    "Taman Midah",
    "Taman Shamelin",
    "Taman Sungai Besi",
    "Taman Suntex",
    "Taman Taming Jaya",
    "Taman Tun Dr Ismail",
    "Tanjung Karang",
    "Tanjung Sepat",
    "Trillium Lake Fields",
    "UEP Subang Jaya",
    "Utama Kuala Lumpur",
    "Utropolis Mall Glenmarie",
    "Vertical, Bangsar South"
  ];

  String fullName = '';
  String email = '';
  String phone = '';
  String branch = '';

  @override
  Widget build(BuildContext context) {
    // Paste it here.
    // Replace return Text(...); with return YourWidget(...);

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xdd225c88),
            title: const Text('Online Booking')),
        body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Stack(children: [
              ListView(
                children: [
                  Container(
                    width: 360,
                    height: 40,
                    child: Stack(children: [
                      Positioned.fill(
                          child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  width: 328,
                                  height: 32,
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                            width: 328,
                                            height: 32,
                                            child: Text("Select Service",
                                                style: TextStyle(
                                                  color: Color(0xdd225c88),
                                                  fontSize: 20,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w500,
                                                )))
                                      ]))))
                    ]),
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                  ),
/////////////////////////////////////////////////////////////////////////////////
                  Container(
                    width: 328,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xfff8f8f8),
                            ),
                            padding: const EdgeInsets.only(
                              left: 12,
                              right: 16,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0x496bcde6),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 24,
                                              height: 24,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [],
                                              ),
                                            ),
                                            Positioned.fill(
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  width: 24,
                                                  height: 24,
                                                  child: Checkbox(
                                                    value: _clicked,
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        _clicked = value!;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 258,
                                        child: Text(
                                          "Personal Current or Savings Account and Debit Card",
                                          style: TextStyle(
                                            color: Color(0xff1a191e),
                                            fontSize: 16,
                                            fontFamily: "DM Sans",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16),
                                Container(
                                  width: 15,
                                  height: 14.70,
                                  child: new Image.asset(
                                    '../assets/Vector.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                    margin: const EdgeInsets.all(1.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                  ),
/////////////////////////////////////////////////////////////////////////////////
                  Container(
                    width: 328,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xfff8f8f8),
                            ),
                            padding: const EdgeInsets.only(
                              left: 12,
                              right: 16,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0x496bcde6),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 24,
                                              height: 24,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [],
                                              ),
                                            ),
                                            Positioned.fill(
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  width: 24,
                                                  height: 24,
                                                  child: Checkbox(
                                                    value: _clicked2,
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        _clicked2 = value!;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 258,
                                        child: Text(
                                          "Online Banking Account and Services",
                                          style: TextStyle(
                                            color: Color(0xff1a191e),
                                            fontSize: 16,
                                            fontFamily: "DM Sans",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16),
                                Container(
                                  width: 15,
                                  height: 14.70,
                                  child: new Image.asset(
                                    '../assets/Vector.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                    margin: const EdgeInsets.all(1.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                  ),
/////////////////////////////////////////////////////////////////////////////////
                  Container(
                    width: 328,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xfff8f8f8),
                            ),
                            padding: const EdgeInsets.only(
                              left: 12,
                              right: 16,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0x496bcde6),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 24,
                                              height: 24,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [],
                                              ),
                                            ),
                                            Positioned.fill(
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  width: 24,
                                                  height: 24,
                                                  child: Checkbox(
                                                    value: _clicked3,
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        _clicked3 = value!;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 258,
                                        child: Text(
                                          "Credit Card, Investment, Insurance and Loan/Financing",
                                          style: TextStyle(
                                            color: Color(0xff1a191e),
                                            fontSize: 16,
                                            fontFamily: "DM Sans",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16),
                                Container(
                                  width: 15,
                                  height: 14.70,
                                  child: new Image.asset(
                                    '../assets/Vector.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                    margin: const EdgeInsets.all(1.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                  ),
/////////////////////////////////////////////////////////////////////////////////
                  Container(
                    width: 328,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xfff8f8f8),
                            ),
                            padding: const EdgeInsets.only(
                              left: 12,
                              right: 16,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0x496bcde6),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 24,
                                              height: 24,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [],
                                              ),
                                            ),
                                            Positioned.fill(
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  width: 24,
                                                  height: 24,
                                                  child: Checkbox(
                                                    value: _clicked4,
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        _clicked4 = value!;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 258,
                                        child: Text(
                                          "Multiple Banking transactions, remittance, and fixed deposit and ASNB",
                                          style: TextStyle(
                                            color: Color(0xff1a191e),
                                            fontSize: 16,
                                            fontFamily: "DM Sans",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16),
                                Container(
                                  width: 15,
                                  height: 14.70,
                                  child: new Image.asset(
                                    '../assets/Vector.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                    margin: const EdgeInsets.all(1.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                  ),
/////////////////////////////////////////////////////////////////////////////////
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Divider(
                    color: Color(0xdd225c88), //color of divider
                    height: 5, //height spacing of divider
                    thickness: 3, //thickness of divier line
                    indent: 25, //spacing at the start of divider
                    endIndent: 25, //spacing at the end of divider
                  ),
                  Container(
                    width: 360,
                    height: 40,
                    child: Stack(children: [
                      Positioned.fill(
                          child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  width: 328,
                                  height: 32,
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                            width: 328,
                                            height: 32,
                                            child: Text("Select Date and Time",
                                                style: TextStyle(
                                                  color: Color(0xdd225c88),
                                                  fontSize: 20,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w500,
                                                )))
                                      ]))))
                    ]),
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                  ),
/////////////////////////////////////////////////////////////////////////////////
                  SizedBox(
                    height: 200,
                    child: CupertinoDatePicker(
                      initialDateTime: _dateTime,
                      onDateTimeChanged: (dateTime) {
                        setState(() {
                          _dateTime = dateTime;
                        });
                      },
                    ),
                  ),
/////////////////////////////////////////////////////////////////////////////////

                  Padding(padding: EdgeInsets.only(top: 20)),
                  Divider(
                    color: Color(0xdd225c88), //color of divider
                    height: 5, //height spacing of divider
                    thickness: 3, //thickness of divier line
                    indent: 25, //spacing at the start of divider
                    endIndent: 25, //spacing at the end of divider
                  ),
                  Container(
                    width: 360,
                    height: 40,
                    child: Stack(children: [
                      Positioned.fill(
                          child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  width: 328,
                                  height: 32,
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                            width: 328,
                                            height: 32,
                                            child: Text(
                                                "Select Preferred Branch",
                                                style: TextStyle(
                                                  color: Color(0xdd225c88),
                                                  fontSize: 20,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w500,
                                                )))
                                      ]))))
                    ]),
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                  ),
                  SizedBox(
                    width: 100,
                    child: FlutterDropdownSearch(
                      hintText: "RHB Branch",
                      textFieldBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      textController: _controller,
                      items: items,
                      dropdownHeight: 200.0,
                      dropdownBgColor: Color(0xFF6BCDE6),
                    ),
                  ),

/////////////////////////////////////////////////////////////////////////////////
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Divider(
                    color: Color(0xdd225c88), //color of divider
                    height: 5, //height spacing of divider
                    thickness: 3, //thickness of divier line
                    indent: 25, //spacing at the start of divider
                    endIndent: 25, //spacing at the end of divider
                  ),
                  Container(
                    width: 360,
                    height: 40,
                    child: Stack(children: [
                      Positioned.fill(
                          child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  width: 328,
                                  height: 32,
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                            width: 328,
                                            height: 32,
                                            child: Text(
                                                "Fill in Personal Details",
                                                style: TextStyle(
                                                  color: Color(0xdd225c88),
                                                  fontSize: 20,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w500,
                                                )))
                                      ]))))
                    ]),
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 20, top: 5, bottom: 1),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Full Name',
                        ),
                        onChanged: (text) {
                          setState(() {
                            fullName = text;
                            //you can access nameController in its scope to get
                            // the value of text entered as shown below
                            //fullName = nameController.text;
                          });
                        },
                      )),
                  Container(
                    margin:
                        EdgeInsets.only(left: 20, right: 20, top: 1, bottom: 5),
                  ),

                  Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 20, top: 5, bottom: 1),
                      child: TextField(
                        controller: nameController2,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                        onChanged: (text2) {
                          setState(() {
                            email = text2;
                            //you can access nameController in its scope to get
                            // the value of text entered as shown below
                            //fullName = nameController.text;
                          });
                        },
                      )),
                  Container(
                    margin:
                        EdgeInsets.only(left: 20, right: 20, top: 1, bottom: 5),
                  ),

                  Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        controller: nameController3,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone Number',
                        ),
                        onChanged: (text3) {
                          setState(() {
                            phone = text3;
                            //you can access nameController in its scope to get
                            // the value of text entered as shown below
                            //fullName = nameController.text;
                          });
                        },
                      )),
                  Container(
                    margin: EdgeInsets.all(20),
                  ),
/////////////////////////////////////////////////////////////////////////////////
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: SwipeableButtonView(
                      buttonText: 'Book Appointment',
                      buttonWidget: Container(
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey,
                        ),
                      ),
                      activeColor: Color(0xFF6BCDE6),
                      isFinished: isFinished,
                      onWaitingProcess: () {
                        Future.delayed(Duration(seconds: 3), () {
                          setState(() {
                            print(_dateTime);
                            print(_controller.text);
                            print(fullName);
                            print(email);
                            print(phone);
                            isFinished = true;
                          });
                        });
                      },
                      onFinish: () async {
                        await Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: Completedpage()));

                        //TODO: For reverse ripple effect animation
                        setState(() {
                          isFinished = false;
                        });
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20, bottom: 30))
                ],
              )
            ])));
  }
}
