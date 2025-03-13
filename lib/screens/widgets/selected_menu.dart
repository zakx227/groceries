import 'package:flutter/material.dart';

class SelecteurMenu extends StatefulWidget {
  final List<String> items;
  final String selectedValue;
  final Function(String?) onChanged;

  const SelecteurMenu(
      {super.key,
      required this.items,
      required this.onChanged,
      required this.selectedValue});

  @override
  State<SelecteurMenu> createState() => _SelecteurMenuState();
}

class _SelecteurMenuState extends State<SelecteurMenu> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      icon: Padding(
        padding: const EdgeInsets.only(left: 250),
        child: Icon(Icons.arrow_downward),
      ),
      underline: Container(
        height: 2,
        color: Color(0xFFE2E2E2),
      ),
      value: widget.selectedValue,
      onChanged: widget.onChanged,
      items: widget.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ));
      }).toList(),
    );
  }
}
