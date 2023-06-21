import 'package:flutter/material.dart';
import 'package:wifi_manager/constants.dart';
import 'ExpandedWidgates.dart';
import 'HomePage.dart';

void main() {
  runApp(ManageUsers());
}

class ManageUsers extends StatefulWidget {
  const ManageUsers({super.key});

  @override
  State<ManageUsers> createState() => _manageState();
}

class _manageState extends State<ManageUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text('Manage Users'),
      ),
      body: Column(
        children: [
          MyEpandedWidget(
            color: const Color(0xFFD10000),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'All Users: 10',
                  style: navigationButtonsStyle,
                ),
                Text(
                  'Active Users: 7',
                  style: navigationButtonsStyle,
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              usersContainer(),
              usersContainer(),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              usersContainer(),
              usersContainer(),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              usersContainer(),
              usersContainer(),
            ],
          )
        ],
      ),
    );
  }
}

class usersContainer extends StatelessWidget {
  const usersContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 200,
      color: Colors.red,
      margin: EdgeInsets.all(15),
    );
  }
}
