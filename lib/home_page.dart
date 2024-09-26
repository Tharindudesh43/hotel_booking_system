import 'package:flutter/material.dart';
import 'package:hotel_booking_app/screens/booking_screen.dart';
import 'package:hotel_booking_app/screens/discover_screen.dart';
import 'package:hotel_booking_app/screens/favourite_screen.dart';
import 'package:hotel_booking_app/screens/message_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int screenNo = 0;
  List<Widget> screenList = const [
    DiscoverScreen(),
    FavouriteScreen(),
    BookingScreen(),
    MessageScreen()
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: screenList[screenNo],
    bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding:const EdgeInsets.symmetric(horizontal: 50,vertical: 20) ,
      ),
    ),

   )
  }
}

Widget bottomNavigationIcon(
    {required IconData icon, required String iconText, required int index}) {
  return InkWell(
    onTap: () {
      setState(() {
        screenNo = index;
      });
      print(screenNo);
    },
    child: Column(
      children: [
        Icon(
          icon,
          color: screenNo == index ? Colors.white : Colors.grey,
          size: screenNo == index ? 23 : 18,
        ),
        Text(
          iconText,
          style:
              TextStyle(color: screenNo == index ? Colors.white : Colors.grey),
        ),
      ],
    ),
  );
}
