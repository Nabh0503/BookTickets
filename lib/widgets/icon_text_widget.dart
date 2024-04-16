import 'package:bookingtickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final List<String> items;
  final String? selectedItem;
  final ValueChanged<String?>? onChanged;

  const AppIconText({
    Key? key,
    required this.icon,
    required this.text,
    required this.items,
    this.selectedItem,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Styles.primaryColor1,),
        const SizedBox(width: 8.0), // Add some spacing between the icon and the dropdown
        Expanded(
          child: DropdownButtonFormField<String>(
            value: selectedItem,
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: onChanged,
            decoration: InputDecoration(
              filled: true, // This enables color fill in the text field
              fillColor: Colors.black87, // This changes the background color
              labelText: text,
              labelStyle: const TextStyle(color: Colors.white), // This changes the label text color
              border: const OutlineInputBorder(),
            ),
            style: const TextStyle(color: Colors.white),
            dropdownColor: Colors.black87, // This changes the background color of the dropdown menu
          ),
        ),
      ],
    );
  }
}