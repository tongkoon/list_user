import 'package:flutter/material.dart';

import 'models/user.dart';

class UserDetail extends StatelessWidget {
  final User user;
  const UserDetail({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 45, 3, 66),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 45, 3, 66),
        title: Text(
          user.username,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            userPersonal(user),
            const SizedBox(height: 15),
            Row(
              children: <Widget>[
                addrassCard(user),
                const SizedBox(width: 5),
                companyCard(user),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget userPersonal(User user) {
  return Card(
    elevation: 0,
    color: const Color.fromARGB(255, 81, 55, 84),
    child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: SizedBox(
        width: 500,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Icon(
              Icons.account_circle,
              size: 100.0,
              color: Colors.white,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(fontSize: 17.0, color: Colors.white),
                children: [
                  TextSpan(
                    text: '${user.name}\n',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  const WidgetSpan(
                      child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                  )),
                  TextSpan(
                    text: '📧 email : ${user.email}\n',
                  ),
                  const WidgetSpan(
                      child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                  )),
                  TextSpan(
                    text: '📱 Call :  ${user.phone}\n',
                  ),
                  const WidgetSpan(
                      child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                  )),
                  TextSpan(
                    text: '🌐 ${user.website}',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget addrassCard(User user) {
  return Card(
    elevation: 0,
    color: const Color.fromARGB(255, 81, 55, 84),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: 140,
        height: 180,
        child: Column(
          children: <Widget>[
            const Icon(
              Icons.home,
              color: Colors.white,
              size: 30.0,
            ),
            RichText(
              text: TextSpan(
                  style: const TextStyle(fontSize: 15.0, color: Colors.white),
                  children: [
                    const WidgetSpan(
                        child: SizedBox(
                      height: 35,
                    )),
                    TextSpan(
                        text: "street :  ${user.address.street}\n"
                            "suit : ${user.address.suite}\n"
                            "city : ${user.address.city}\n"
                            "phone : ${user.address.zipcode}\n"
                            "geo : ${user.address.geo.lat},${user.address.geo.lng}")
                  ]),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget companyCard(User user) {
  return Card(
    elevation: 0,
    color: const Color.fromARGB(255, 81, 55, 84),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: 140,
        height: 180,
        child: Column(
          children: <Widget>[
            const Icon(
              Icons.business,
              color: Colors.white,
              size: 30.0,
            ),
            RichText(
              text: TextSpan(
                  style: const TextStyle(fontSize: 15.0, color: Colors.white),
                  children: [
                    const WidgetSpan(
                        child: SizedBox(
                      height: 35,
                    )),
                    TextSpan(
                      text: user.company.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                        text: "\n${user.company.catchPhrase}\n"
                            "bs : ${user.company.bs}"),
                  ]),
            ),
          ],
        ),
      ),
    ),
  );
}
