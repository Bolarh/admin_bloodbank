import 'package:admin_portal/utils/colors.dart';
import 'package:admin_portal/widgets/body.dart';
import 'package:admin_portal/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      
      body:  Row(
        children: [
          SideBar(),
          Expanded(
            child: Body(),
          ),
        ],
      ),
    );
  }
}


