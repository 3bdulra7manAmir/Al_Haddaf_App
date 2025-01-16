import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    super.key, 
    //this.title, 
    required this.items, 
    required this.onChanged,
    this.validator,
    this.initialValue,
  });

  //final String? title;
  final List<String> items;
  final Function(String?) onChanged;
  final String? Function(String?)? validator; // For validation
  final String? initialValue; // For default selected value

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children:
      [
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffE5E5E5),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffE5E5E5),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffE5E5E5),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          ),
          isExpanded: true,
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/arrowDowen.png'),
          ),
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(value)),
            );
          }).toList(),
          onChanged: onChanged,
          validator: validator,
          value: initialValue,
        ),
      ],
    );
  }
}