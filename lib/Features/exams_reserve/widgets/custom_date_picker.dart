import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DateInputField extends StatefulWidget
{
  const DateInputField({super.key});

  @override
  DateInputFieldState createState() => DateInputFieldState();
}

class DateInputFieldState extends State<DateInputField>
{
  static final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      controller: dateController,
      cursorColor: Colors.green,
      decoration: InputDecoration(
        prefixIcon: SvgPicture.asset('assets/images/svg/calender_icon.svg'),
        border: OutlineInputBorder(),
        fillColor: Colors.green,
        iconColor: Colors.green,
        focusColor: Colors.green,
        hoverColor: Colors.green,
      ),
      readOnly: true, // Prevents manual editing
      onTap: () async
      {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1980),
          lastDate: DateTime.now(),
        );

        if (pickedDate != null)
        {
          String formattedDate = "${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";
          dateController.text = formattedDate; // Set the value in the TextField
        }
      },
    );
  }
}