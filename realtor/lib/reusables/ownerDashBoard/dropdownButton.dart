import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  final List<String> items = [
    'Avg Sale Price',
    'Homes sold',
    'Sal-to-List',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 50.0,
      child: DropdownButton2<String>(
        hint: Text(
          items[0],
          style: TextStyle(
            fontSize: 14,
            //color: Theme.of(context).hintColor,
          ),
        ),
        items: items
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (String? value) {
          setState(() {
            selectedValue = value;
          });
        },
        // buttonStyleData: const ButtonStyleData(
        //   padding: EdgeInsets.symmetric(horizontal: 16),
        //   height: 40,
        //   width: 140,
        // ),
        // menuItemStyleData: const MenuItemStyleData(
        //   height: 40,
        // ),
      ),
    );
  }
}
