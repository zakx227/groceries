import 'package:flutter/material.dart';
import 'package:groceries/screens/widgets/button.dart';
import 'package:groceries/screens/widgets/selected_menu.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({super.key});

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  List<String> list = ['zone 1', 'zone 2', 'zone 3'];
  late String selectedZone = list.first;

  void onZoneSelected(String? newValue) {
    setState(() {
      selectedZone = newValue!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset(
              'assets/images/illustration.png',
              width: 224,
              height: 170,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
            child: Text(
              'Select Your Location',
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
                'Swithch on your location to stay in tune with what’s happening in your area'),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 270),
            child: Text('Your Zone'),
          ),
          SelecteurMenu(
              items: list,
              onChanged: onZoneSelected,
              selectedValue: selectedZone),
          Padding(
            padding: const EdgeInsets.only(right: 270),
            child: Text('Your Area'),
          ),
          SelecteurMenu(
              items: list,
              onChanged: onZoneSelected,
              selectedValue: selectedZone),
          SizedBox(
            height: 30,
          ),
          Button(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              title: 'Submit')
        ],
      ),
    );
  }
}
