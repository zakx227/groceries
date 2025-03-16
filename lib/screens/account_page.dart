import 'package:flutter/material.dart';
import 'package:groceries/models/model_user.dart';
import 'package:groceries/screens/widgets/buttonimg.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});

  final List<ListTile> items = [
    ListTile(
      leading: Image.asset(
        'assets/images/Orders icon.png',
        width: 18,
        height: 20,
      ),
      title: Text(
        'Orders',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    ),
    ListTile(
      leading: Image.asset(
        'assets/images/My Details icon.png',
        width: 18,
        height: 20,
      ),
      title: Text(
        'My Details',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    ),
    ListTile(
      leading: Image.asset(
        'assets/images/Delicery address.png',
        width: 18,
        height: 20,
      ),
      title: Text(
        'Delivery Address',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    ),
    ListTile(
      leading: Image.asset(
        'assets/images/Vector icon.png',
        width: 18,
        height: 20,
      ),
      title: Text(
        'Payment Methods',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    ),
    ListTile(
      leading: Image.asset(
        'assets/images/Promo Cord icon.png',
        width: 18,
        height: 20,
      ),
      title: Text(
        'Promo Card',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    ),
    ListTile(
      leading: Image.asset(
        'assets/images/Bell icon.png',
        width: 18,
        height: 20,
      ),
      title: Text(
        'Notifications',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    ),
    ListTile(
      leading: Image.asset(
        'assets/images/help icon.png',
        width: 18,
        height: 20,
      ),
      title: Text(
        'Help',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    ),
    ListTile(
      leading: Image.asset(
        'assets/images/about icon.png',
        width: 18,
        height: 20,
      ),
      title: Text(
        'About',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    )
  ];

  final ModelUser user = ModelUser(
      userName: 'Afsar Hossen',
      email: 'Imshuvo97@gmail.com',
      userImage: 'assets/images/Rectangle 82.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Image.asset(
                  user.userImage,
                ),
              ),
              title: Text(
                user.userName,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(user.email),
            ),
            SizedBox(
              width: double.infinity,
              height: 500,
              child: ListView.separated(
                itemCount: items.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return items[index];
                },
              ),
            ),
            SizedBox(
              width: 353,
              height: 67,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Color(0xFFF2F3F2)),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/Group 6892.png',
                      width: 50,
                      height: 20,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF53B175),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
