import 'package:flutter/material.dart';
import 'package:wifi_manager/constants.dart';

void main() {
  runApp(BlockedUsers());
}

class BlockedUsers extends StatefulWidget {
  const BlockedUsers({super.key});

  @override
  State<BlockedUsers> createState() => _manageState();
}

class _manageState extends State<BlockedUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: Text('Blocked Users'),
        ),
        body: const Column(
          children: [
            BlockedUsersContainer(
              child: 'User 1',
            ),
            BlockedUsersContainer(
              child: 'User 2',
            ),
            BlockedUsersContainer(
              child: 'User 3',
            ),
            BlockedUsersContainer(
              child: 'User 4',
            ),
            BlockedUsersContainer(
              child: 'User 5',
            ),
            BlockedUsersContainer(
              child: 'User 6',
            ),
            BlockedUsersContainer(
              child: 'User 7',
            ),
          ],
        ));
  }
}

class BlockedUsersContainer extends StatelessWidget {
  const BlockedUsersContainer({super.key, required this.child});

  final String child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      width: double.infinity,
      height: 50,
      color: Color(0xFFFF0000),
      margin: EdgeInsets.all(5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            child,
            style: navigationButtonsStyle,
          ),
        ],
      ),
    );
  }
}
