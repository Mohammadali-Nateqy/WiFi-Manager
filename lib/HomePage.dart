import 'package:flutter/material.dart';
import 'ExpandedWidgates.dart';
import 'ManageUsersPage.dart';
import 'blockedUsers.dart';
import 'constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: const Center(
          child: Text(
            'Rowzana Company',
          ),
        ),
      ),
      body: Column(
        children: [
          MyEpandedWidget(
            color: const Color(0xFFD10000),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Home',
                  style: navigationButtonsStyle,
                ),
                ChangePages(
                  page: ManageUsers(),
                  pageName: 'Manage Users',
                ),
                ChangePages(
                  pageName: 'Blocked Users',
                  page: BlockedUsers(),
                ),
              ],
            ),
          ),
          const Image(
            width: 200,
            height: 450,
            image: AssetImage('images/rowzana.png'),
          ),
          MyEpandedWidget(
            color: const Color(0xFFD10000),
            child: Container(
              margin: EdgeInsets.only(left: 20.0),
              child: const Row(
                children: [
                  Text(
                    'Mohammad Ali Nateqy',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          MyEpandedWidget(
            color: const Color(0xFFD10000),
            child: Container(
              margin: EdgeInsets.only(left: 20.0),
              child: const Row(
                children: [
                  Text(
                    '45.456 GB Used',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          MyEpandedWidget(
            color: const Color(0xFFD10000),
            child: Container(
              margin: EdgeInsets.only(left: 20.0),
              child: const Row(
                children: [
                  Text(
                    'Payed 2500 AF',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChangePages extends StatelessWidget {
  const ChangePages({super.key, required this.page, required this.pageName});

  final Widget page;
  final String pageName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return page;
            },
          ),
        );
      },
      child: Text(
        pageName,
        style: navigationButtonsStyle,
      ),
    );
  }
}
