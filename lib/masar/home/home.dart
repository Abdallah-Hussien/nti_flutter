import 'package:flutter/material.dart';
import 'package:nti_flutter/masar/utils/app_color.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}



class BottomNavigationItem extends StatelessWidget {
  const BottomNavigationItem({
    super.key,
    required this.index,
    required this.icon,
    required this.currentIndex,
    required this.onTap,
  });
  final int index;
  final int currentIndex;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        color: index == currentIndex ? AppColor.primaryBlue : Colors.grey,
      ),
    );
  }
}


// backgroundColor: AppColor.primaryBlue,
//         bottomNavigationBar: Container(
//           height: 50,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               BottomNavigationItem(
//                   index: 0,
//                   icon: Icons.home,
//                   currentIndex: _currentIndex,
//                   onTap: () {
//                     setState(() {
//                       _currentIndex = 0;
//                     });
//                   }),
//               BottomNavigationItem(
//                   index: 1,
//                   icon: Icons.notification_add,
//                   currentIndex: _currentIndex,
//                   onTap: () {
//                     setState(() {
//                       _currentIndex = 1;
//                     });
//                   }),
//               BottomNavigationItem(
//                   index: 2,
//                   icon: Icons.calendar_month,
//                   currentIndex: _currentIndex,
//                   onTap: () {
//                     setState(() {
//                       _currentIndex = 2;
//                     });
//                   }),
//               BottomNavigationItem(
//                   index: 3,
//                   icon: Icons.person,
//                   currentIndex: _currentIndex,
//                   onTap: () {
//                     setState(() {
//                       _currentIndex = 3;
//                     });
//                   }),
//             ],
//           ),
//         ),