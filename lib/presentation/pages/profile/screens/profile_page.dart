import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String userId;
  const ProfilePage({required Key key, required this.userId}) : super(key: key);

  @override
  State <ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        child: Center(
          child: Text('Profile Page'),
        ),
      );
  }
}