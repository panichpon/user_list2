import 'package:flutter/material.dart';
import 'models/user.dart';

class UserDetail extends StatelessWidget {
  final User user;

  const UserDetail({Key? key, required this.user}) : super(key: key);

  Widget userPersonal() {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[],
        ),
      ),
    );
  }

  Widget userCompany() {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(),
      ),
    );
  }

  Widget userAddress() {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(),
      ),
    );
  }

  Widget userGeo() {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(user.name),
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              userPersonal(),
              userAddress(),
              userCompany(),
              userGeo(),
            ],
          ),
        ));
  }
}
