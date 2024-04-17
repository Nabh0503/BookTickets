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
    super.key,
    required this.icon,
    required this.text,
    required this.items,
    this.selectedItem,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController(text: selectedItem);

    return Row(
      children: [
        Icon(icon, color: Styles.primaryColor1,),
        const SizedBox(width: 8.0), // Add some spacing between the icon and the dropdown
        Expanded(
          child: Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              }
              return items.where((String option) {
                return option.toLowerCase().startsWith(textEditingValue.text.toLowerCase());
              });
            },
            onSelected: onChanged,
            optionsViewBuilder: (BuildContext context, AutocompleteOnSelected<String> onSelected, Iterable<String> options) {
              return Align(
                alignment: Alignment.topLeft,
                child: Material(
                  elevation: 10.0,
                  child: Container(
                    color: Colors.black87,
                    width: 339.0,
                    height: 150.0,
                    child: ListView(
                      padding: const EdgeInsets.all(5.0),
                      children: options.map((String option) => GestureDetector(
                        onTap: () {
                          onSelected(option);
                        },
                        child: ListTile(
                          title: Text(option, style: const TextStyle(color: Colors.white)),
                        ),
                      )).toList(),
                    ),
                  ),
                ),
              );
            },
            fieldViewBuilder: (BuildContext context, TextEditingController fieldController, FocusNode fieldFocusNode, VoidCallback onFieldSubmitted) {
              fieldController.value = _controller.value;
              return TextField(
                controller: fieldController,
                focusNode: fieldFocusNode,
                decoration: InputDecoration(
                  filled: true, // This enables color fill in the text field
                  fillColor: Colors.black87, // This changes the background color
                  labelText: text,
                  labelStyle: const TextStyle(color: Colors.white), // This changes the label text color
                  border: const OutlineInputBorder(),
                ),
                style: const TextStyle(color: Colors.white),
              );
            },
          ),
        ),
      ],
    );
  }
}